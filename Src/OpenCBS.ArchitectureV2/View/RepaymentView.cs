using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using OpenCBS.ArchitectureV2.Interface.Presenter;
using OpenCBS.ArchitectureV2.Interface.View;
using OpenCBS.CoreDomain.Contracts.Loans;
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
            _amountNumericUpDown.TextChanged += (sender, e) => presenterCallbacks.OnAmountChanged();
            _dateTimePicker.ValueChanged += (sender, e) => presenterCallbacks.OnDateChanged();
            _principalNumericUpDown.ValueChanged += (sender, e) => presenterCallbacks.OnRefresh();
            _interestNumericUpDown.ValueChanged += (sender, e) => presenterCallbacks.OnRefresh();
            _penaltyNumericUpDown.ValueChanged += (sender, e) => presenterCallbacks.OnRefresh();
            _commissionNumericUpDown.ValueChanged += (sender, e) => presenterCallbacks.OnRefresh();
            _typeOfRepaymentComboBox.SelectedValueChanged += (sender, e) => presenterCallbacks.OnRefresh();
            _okButton.Click += (sender, e) => presenterCallbacks.OnRepay();
            _cancelButton.Click += (sender, e) => presenterCallbacks.OnCancel();
        }

        public void Run()
        {
            ShowDialog();
        }

        public void Stop()
        {
            Close();
        }

        public Loan Loan
        {
            set { _scheduleControl.SetScheduleFor(value); }
        }

        public List<string> RepaymentScripts
        {
            get { return (List<string>) _typeOfRepaymentComboBox.DataSource; }
            set { _typeOfRepaymentComboBox.DataSource = value; }
        }

        public decimal Amount
        {
            get { return _amountNumericUpDown.Value; }
            set { _amountNumericUpDown.Value = value; }
        }

        public decimal Principal
        {
            get { return _principalNumericUpDown.Value; }
            set { _principalNumericUpDown.Value = value; }
        }

        public decimal Interest
        {
            get { return _interestNumericUpDown.Value; }
            set { _interestNumericUpDown.Value = value; }
        }

        public decimal Penalty
        {
            get { return _penaltyNumericUpDown.Value; }
            set { _penaltyNumericUpDown.Value = value; }
        }

        public decimal Commission
        {
            get { return _commissionNumericUpDown.Value; }
            set { _commissionNumericUpDown.Value = value; }
        }
        public DateTime Date
        {
            get { return _dateTimePicker.Value; }
            set { _dateTimePicker.Value = value; }
        }
        public bool OkButtonEnabled
        {
            get { return _okButton.Enabled; }
            set { _okButton.Enabled = value; }
        }
        public string Comment
        {
            get { return _commentRichTextBox.Text; }
            set { _commentRichTextBox.Text = value; }
        }

        public string Title
        {
            get { return Text; }
            set { Text = value; }
        }

        public string SelectedScript
        {
            get
            {
                return "NormalRepayment.py";
                //return _typeOfRepaymentComboBox.SelectedItem.ToString();
            }
            set
            {
                _typeOfRepaymentComboBox.SelectedItem = value;
            }
        }
    }
}
