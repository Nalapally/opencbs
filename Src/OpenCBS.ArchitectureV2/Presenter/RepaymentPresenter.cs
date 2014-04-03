using System.Linq;
using OpenCBS.ArchitectureV2.Interface.Presenter;
using OpenCBS.ArchitectureV2.Interface.Service;
using OpenCBS.ArchitectureV2.Interface.View;
using OpenCBS.CoreDomain;
using OpenCBS.CoreDomain.Contracts.Loans;
using OpenCBS.CoreDomain.Contracts.Savings;
using OpenCBS.Services;
using OpenCBS.Shared.Settings;

namespace OpenCBS.ArchitectureV2.Presenter
{
    public class RepaymentPresenter : IRepaymentPresenter, IRepaymentPresenterCallbacks
    {
        private readonly Loan _loan;
        private readonly ISavingsContract _saving;
        private readonly IRepaymentView _view;
        private readonly IRepaymentService _repaymentService;

        public RepaymentPresenter(IRepaymentView view, IRepaymentService repaymentService)
        {
            _view = view;
            _repaymentService = repaymentService;
            _loan = _repaymentService.Settings.Loan.Copy();
            _view.PrincipalMax = _loan.OLB;
            _view.RepaymentScripts = _repaymentService.GetAllRepaymentScriptsWithTypes();
            _view.PaymentMethods = ServicesProvider.GetInstance().GetPaymentMethodServices().GetAllPaymentMethods();
            _view.Title = _loan.Project.Client.Name + " " + _loan.Code;
            _repaymentService.Settings.ScriptName = _view.SelectedScript;
            if (ApplicationSettings.GetInstance(User.CurrentUser.Md5).UseMandatorySavingAccount)
                _saving =
                    (from item in _loan.Project.Client.Savings where item.Product.Code == "default" select item)
                        .FirstOrDefault();
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
            _loan.Events = _repaymentService.Settings.Loan.Events;
            ServicesProvider.GetInstance()
                            .GetContractServices()
                            .SaveInstallmentsAndRepaymentEvents(_loan, _repaymentService.Settings.Loan.InstallmentList);
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
                _repaymentService.Settings.Date.Date == _view.Date.Date &&
                _repaymentService.Settings.Amount == _view.Amount) return;
            if (_repaymentService.Settings.Date.Date != _view.Date.Date)
            {
                _repaymentService.Settings.DateChanged = true;
                _repaymentService.Settings.Date = _view.Date;
                if (_saving != null)
                    _view.Description = "Доступный баланс " + _saving.GetBalance(_view.Date).Value.ToString("N2");
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
            _repaymentService.Settings.PaymentMethod = _view.SelectedPaymentMethod;
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
