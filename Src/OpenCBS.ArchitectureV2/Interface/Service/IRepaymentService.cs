using System.Collections.Generic;
using OpenCBS.ArchitectureV2.Service;
using OpenCBS.CoreDomain.Contracts.Loans;

namespace OpenCBS.ArchitectureV2.Interface.Service
{
    public interface IRepaymentService
    {
<<<<<<< HEAD
        Loan Repay();
        Dictionary<string, string> GetAllRepaymentScriptsWithTypes();
=======
        Loan Repay(RepaymentConfiguration configuration);
        Loan RepayAndSave(RepaymentConfiguration configuration);
>>>>>>> Add normal repayment script
    }
}
