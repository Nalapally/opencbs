using OpenCBS.ArchitectureV2.CommandData;
using OpenCBS.ArchitectureV2.Interface;
using OpenCBS.ArchitectureV2.Presenter;
using OpenCBS.ArchitectureV2.Service;
using OpenCBS.ArchitectureV2.View;

namespace OpenCBS.ArchitectureV2.Command
{
    public class ShowRepaymentViewCommand : ICommand<ShowRepaymentViewCommandData>
    {
        public void Execute(ShowRepaymentViewCommandData commandData)
        {
            var presenter = new RepaymentPresenter(new RepaymentView(),
                                                   new RepaymentService
                                                       {
                                                           Settings =
                                                               new RepaymentSettings {Loan = commandData.Loan}
                                                       });
            presenter.Run();
        }
    }
}
