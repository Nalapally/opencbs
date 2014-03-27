namespace OpenCBS.ArchitectureV2.Interface.Presenter
{
    public interface IRepaymentPresenterCallbacks
    {
        void OnRepay();
        void OnDateChanged();
        void OnAmountChanged();
        void OnRefresh();
        void OnCancel();
    }
}
