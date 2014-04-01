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
            _loan = _repaymentService.Settings.Loan.Copy();
            _view.PrincipalMax = _loan.OLB;
            _view.RepaymentScripts = _repaymentService.GetAllRepaymentScriptsWithDecription();
            _view.Title = _loan.Project.Client.Name + " " + _loan.Code;
        }

        public object View { get { return _view; } }

        public void Run()
        {
            OnRefresh();
            _view.Attach(this);
            _view.Run();
        }

        public void OnRepay()
        {
            ServicesProvider.GetInstance()
                            .GetContractServices()
                            .SaveInstallmentsAndRepaymentEvents(_repaymentService.Settings.Loan);
            _view.Stop();
        }

        public void OnRefresh()
        {
            if (_repaymentService.Settings.Principal == _view.Principal &&
                _repaymentService.Settings.Interest == _view.Interest &&
                _repaymentService.Settings.Penalty == _view.Penalty &&
                _repaymentService.Settings.Commission == _view.Commission &&
                _repaymentService.Settings.Comment == _view.Comment &&
                _repaymentService.Settings.ScriptName == _view.SelectedScript &&
                _repaymentService.Settings.Date == _view.Date &&
                _repaymentService.Settings.Amount == _view.Amount) return;
            if (_repaymentService.Settings.Date != _view.Date)
            {
                _repaymentService.Settings.DateChanged = true;
                _repaymentService.Settings.Date = _view.Date;
            }
            if (_repaymentService.Settings.Amount != _view.Amount)
            {
                _repaymentService.Settings.AmountChanged = true;
                _repaymentService.Settings.Amount = _view.Amount;
            }
            _repaymentService.Settings.Loan = _loan.Copy();
            _repaymentService.Settings.Comment = _view.Comment;
            _repaymentService.Settings.Commission = _view.Commission;
            _repaymentService.Settings.Interest = _view.Interest;
            _repaymentService.Settings.Penalty = _view.Penalty;
            _repaymentService.Settings.Principal = _view.Principal;
            _repaymentService.Settings.ScriptName = _view.SelectedScript;
            _repaymentService.Repay();
            _repaymentService.Settings.DateChanged = false;
            _repaymentService.Settings.AmountChanged = false;
            RefreshAmounts();
        }

        public void OnCancel()
        {
            _view.Stop();
        }

        private void RefreshAmounts()
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
