using OpenCBS.ArchitectureV2.Interface;
using OpenCBS.ArchitectureV2.Interface.Presenter;
using OpenCBS.ArchitectureV2.Interface.Service;
using OpenCBS.ArchitectureV2.Interface.View;
using OpenCBS.CoreDomain.Contracts.Loans;
using OpenCBS.Services;

namespace OpenCBS.ArchitectureV2.Presenter
{
    public class RepaymentPresenter : IRepaymentPresenter, IRepaymentPresenterCallbacks
    {
        private readonly Loan _loan;
        private readonly IRepaymentView _view;
        private readonly IRepaymentService _repaymentService;

        public RepaymentPresenter(IRepaymentView view, IRepaymentService repaymentService)
        {
            _view = view;
            _repaymentService = repaymentService;
            _loan = repaymentService.Settings.Loan.Copy();
        }

        public object View { get { return _view; } }

        public void Run()
        {
            _view.Attach(this);
            _view.Run();
        }

        public void OnRepay()
        {
            ServicesProvider.GetInstance()
                            .GetContractServices()
                            .SaveInstallmentsAndRepaymentEvents(_loan, _repaymentService.Settings.Loan.InstallmentList,
                                                                _repaymentService.Settings.Loan.Events);
            _view.Stop();
        }

        public void OnDateChanged()
        {
            SetSettings(true, false);
            _repaymentService.Repay();
            RefreshView();
        }

        public void OnAmountChanged()
        {
            SetSettings(false, true);
            _repaymentService.Repay();
            RefreshView();
        }

        public void OnRefresh()
        {
            SetSettings(false, false);
            _repaymentService.Repay();
            RefreshView();
        }

        public void OnCancel()
        {
            _repaymentService.Settings.Loan = _loan;
            _view.Stop();
        }

        private void SetSettings(bool dateChanged, bool amountChanged)
        {
            _repaymentService.Settings.Comment = _view.Comment;
            _repaymentService.Settings.Amount = _view.Amount;
            _repaymentService.Settings.AmountChanged = amountChanged;
            _repaymentService.Settings.Commission = _view.Commission;
            _repaymentService.Settings.Date = _view.Date;
            _repaymentService.Settings.DateChanged = dateChanged;
            _repaymentService.Settings.Interest = _view.Interest;
            _repaymentService.Settings.Penalty = _view.Penalty;
            _repaymentService.Settings.Principal = _view.Principal;
            _repaymentService.Settings.ScriptName = _view.SelectedScript;
        }

        private void RefreshView()
        {
            _view.Loan = _repaymentService.Settings.Loan;
            _view.Amount = _repaymentService.Settings.Amount;
            _view.Commission = _repaymentService.Settings.Commission;
            _view.Interest = _repaymentService.Settings.Interest;
            _view.Penalty = _repaymentService.Settings.Penalty;
            _view.Principal = _repaymentService.Settings.Principal;
        }
    }
}
