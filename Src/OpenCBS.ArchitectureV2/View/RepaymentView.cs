using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using OpenCBS.ArchitectureV2.Interface.Presenter;
using OpenCBS.ArchitectureV2.Interface.View;
using OpenCBS.CoreDomain.Contracts.Loans.Installments;

namespace OpenCBS.ArchitectureV2.View
{
    public partial class RepaymentView : BaseView, IRepaymentView
    {
        public RepaymentView()
        {
            InitializeComponent();
        }

        public void Attach(IRepaymentPresenterCallbacks presenterCallbacks)
        {
            throw new NotImplementedException();
        }

        public void Run()
        {
            throw new NotImplementedException();
        }

        public void Stop()
        {
            throw new NotImplementedException();
        }

        public List<Installment> Installments { get; set; }
        public List<string> RepaymentScripts { get; set; }
        public decimal Amount { get; set; }
        public decimal Principal { get; set; }
        public decimal Interest { get; set; }
        public decimal Penalty { get; set; }
        public decimal Commission { get; set; }
        public DateTime Date { get; set; }
        public bool OkButtonEnabled { get; set; }
        public string Comment { get; set; }

        public string Title
        {
            get { return Text; }
            set { Text = value; }
        }

        public string SelectedScript { get; set; }
    }
}
