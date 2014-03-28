namespace OpenCBS.ArchitectureV2.View
{
    partial class RepaymentView
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this._scheduleControl = new OpenCBS.Controls.ScheduleControl();
            this._typeOfRepaymentComboBox = new System.Windows.Forms.ComboBox();
            this._typeOfRepaymentLabel = new System.Windows.Forms.Label();
            this._commentRichTextBox = new System.Windows.Forms.RichTextBox();
            this._commentLabel = new System.Windows.Forms.Label();
            this._commissionNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this._commissionLabel = new System.Windows.Forms.Label();
            this._penaltyNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this._penaltyLabel = new System.Windows.Forms.Label();
            this._interestNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this._interestLabel = new System.Windows.Forms.Label();
            this._principalNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this._principalLabel = new System.Windows.Forms.Label();
            this._amountNumericUpDown = new System.Windows.Forms.NumericUpDown();
            this._amountLabel = new System.Windows.Forms.Label();
            this._dateLabel = new System.Windows.Forms.Label();
            this._dateTimePicker = new System.Windows.Forms.DateTimePicker();
            this._cancelButton = new System.Windows.Forms.Button();
            this._okButton = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this._commissionNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._penaltyNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._interestNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._principalNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._amountNumericUpDown)).BeginInit();
            this.SuspendLayout();
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this._scheduleControl);
            this.splitContainer1.Panel1.Controls.Add(this._typeOfRepaymentComboBox);
            this.splitContainer1.Panel1.Controls.Add(this._typeOfRepaymentLabel);
            this.splitContainer1.Panel1.Controls.Add(this._commentRichTextBox);
            this.splitContainer1.Panel1.Controls.Add(this._commentLabel);
            this.splitContainer1.Panel1.Controls.Add(this._commissionNumericUpDown);
            this.splitContainer1.Panel1.Controls.Add(this._commissionLabel);
            this.splitContainer1.Panel1.Controls.Add(this._penaltyNumericUpDown);
            this.splitContainer1.Panel1.Controls.Add(this._penaltyLabel);
            this.splitContainer1.Panel1.Controls.Add(this._interestNumericUpDown);
            this.splitContainer1.Panel1.Controls.Add(this._interestLabel);
            this.splitContainer1.Panel1.Controls.Add(this._principalNumericUpDown);
            this.splitContainer1.Panel1.Controls.Add(this._principalLabel);
            this.splitContainer1.Panel1.Controls.Add(this._amountNumericUpDown);
            this.splitContainer1.Panel1.Controls.Add(this._amountLabel);
            this.splitContainer1.Panel1.Controls.Add(this._dateLabel);
            this.splitContainer1.Panel1.Controls.Add(this._dateTimePicker);
            this.splitContainer1.Panel1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this._cancelButton);
            this.splitContainer1.Panel2.Controls.Add(this._okButton);
            this.splitContainer1.Panel2.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.splitContainer1.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.splitContainer1.Size = new System.Drawing.Size(830, 595);
            this.splitContainer1.SplitterDistance = 535;
            this.splitContainer1.TabIndex = 0;
            // 
            // _scheduleControl
            // 
            this._scheduleControl.Dock = System.Windows.Forms.DockStyle.Bottom;
            this._scheduleControl.Location = new System.Drawing.Point(0, 154);
            this._scheduleControl.Name = "_scheduleControl";
            this._scheduleControl.Size = new System.Drawing.Size(830, 381);
            this._scheduleControl.TabIndex = 17;
            // 
            // _typeOfRepaymentComboBox
            // 
            this._typeOfRepaymentComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._typeOfRepaymentComboBox.FormattingEnabled = true;
            this._typeOfRepaymentComboBox.Location = new System.Drawing.Point(385, 110);
            this._typeOfRepaymentComboBox.Name = "_typeOfRepaymentComboBox";
            this._typeOfRepaymentComboBox.Size = new System.Drawing.Size(121, 23);
            this._typeOfRepaymentComboBox.TabIndex = 16;
            // 
            // _typeOfRepaymentLabel
            // 
            this._typeOfRepaymentLabel.AutoSize = true;
            this._typeOfRepaymentLabel.Location = new System.Drawing.Point(267, 113);
            this._typeOfRepaymentLabel.Name = "_typeOfRepaymentLabel";
            this._typeOfRepaymentLabel.Size = new System.Drawing.Size(107, 15);
            this._typeOfRepaymentLabel.TabIndex = 15;
            this._typeOfRepaymentLabel.Text = "Type of repayment";
            // 
            // _commentRichTextBox
            // 
            this._commentRichTextBox.Location = new System.Drawing.Point(637, 46);
            this._commentRichTextBox.Name = "_commentRichTextBox";
            this._commentRichTextBox.Size = new System.Drawing.Size(174, 52);
            this._commentRichTextBox.TabIndex = 14;
            this._commentRichTextBox.Text = "";
            // 
            // _commentLabel
            // 
            this._commentLabel.AutoSize = true;
            this._commentLabel.Location = new System.Drawing.Point(570, 47);
            this._commentLabel.Name = "_commentLabel";
            this._commentLabel.Size = new System.Drawing.Size(61, 15);
            this._commentLabel.TabIndex = 13;
            this._commentLabel.Text = "Comment";
            // 
            // _commissionNumericUpDown
            // 
            this._commissionNumericUpDown.DecimalPlaces = 2;
            this._commissionNumericUpDown.Location = new System.Drawing.Point(385, 78);
            this._commissionNumericUpDown.Maximum = new decimal(new int[] {
            1000000000,
            0,
            0,
            0});
            this._commissionNumericUpDown.Name = "_commissionNumericUpDown";
            this._commissionNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._commissionNumericUpDown.TabIndex = 12;
            // 
            // _commissionLabel
            // 
            this._commissionLabel.AutoSize = true;
            this._commissionLabel.Location = new System.Drawing.Point(305, 80);
            this._commissionLabel.Name = "_commissionLabel";
            this._commissionLabel.Size = new System.Drawing.Size(74, 15);
            this._commissionLabel.TabIndex = 11;
            this._commissionLabel.Text = "Commission";
            // 
            // _penaltyNumericUpDown
            // 
            this._penaltyNumericUpDown.DecimalPlaces = 2;
            this._penaltyNumericUpDown.Location = new System.Drawing.Point(385, 49);
            this._penaltyNumericUpDown.Maximum = new decimal(new int[] {
            1000000000,
            0,
            0,
            0});
            this._penaltyNumericUpDown.Name = "_penaltyNumericUpDown";
            this._penaltyNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._penaltyNumericUpDown.TabIndex = 10;
            // 
            // _penaltyLabel
            // 
            this._penaltyLabel.AutoSize = true;
            this._penaltyLabel.Location = new System.Drawing.Point(328, 51);
            this._penaltyLabel.Name = "_penaltyLabel";
            this._penaltyLabel.Size = new System.Drawing.Size(46, 15);
            this._penaltyLabel.TabIndex = 9;
            this._penaltyLabel.Text = "Penalty";
            // 
            // _interestNumericUpDown
            // 
            this._interestNumericUpDown.DecimalPlaces = 2;
            this._interestNumericUpDown.Location = new System.Drawing.Point(91, 105);
            this._interestNumericUpDown.Maximum = new decimal(new int[] {
            1000000000,
            0,
            0,
            0});
            this._interestNumericUpDown.Name = "_interestNumericUpDown";
            this._interestNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._interestNumericUpDown.TabIndex = 8;
            // 
            // _interestLabel
            // 
            this._interestLabel.AutoSize = true;
            this._interestLabel.Location = new System.Drawing.Point(34, 107);
            this._interestLabel.Name = "_interestLabel";
            this._interestLabel.Size = new System.Drawing.Size(46, 15);
            this._interestLabel.TabIndex = 7;
            this._interestLabel.Text = "Interest";
            // 
            // _principalNumericUpDown
            // 
            this._principalNumericUpDown.DecimalPlaces = 2;
            this._principalNumericUpDown.Location = new System.Drawing.Point(91, 76);
            this._principalNumericUpDown.Maximum = new decimal(new int[] {
            1000000000,
            0,
            0,
            0});
            this._principalNumericUpDown.Name = "_principalNumericUpDown";
            this._principalNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._principalNumericUpDown.TabIndex = 6;
            // 
            // _principalLabel
            // 
            this._principalLabel.AutoSize = true;
            this._principalLabel.Location = new System.Drawing.Point(34, 78);
            this._principalLabel.Name = "_principalLabel";
            this._principalLabel.Size = new System.Drawing.Size(53, 15);
            this._principalLabel.TabIndex = 5;
            this._principalLabel.Text = "Principal";
            // 
            // _amountNumericUpDown
            // 
            this._amountNumericUpDown.DecimalPlaces = 2;
            this._amountNumericUpDown.Location = new System.Drawing.Point(91, 47);
            this._amountNumericUpDown.Maximum = new decimal(new int[] {
            1000000000,
            0,
            0,
            0});
            this._amountNumericUpDown.Name = "_amountNumericUpDown";
            this._amountNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._amountNumericUpDown.TabIndex = 4;
            // 
            // _amountLabel
            // 
            this._amountLabel.AutoSize = true;
            this._amountLabel.Location = new System.Drawing.Point(34, 49);
            this._amountLabel.Name = "_amountLabel";
            this._amountLabel.Size = new System.Drawing.Size(51, 15);
            this._amountLabel.TabIndex = 3;
            this._amountLabel.Text = "Amount";
            // 
            // _dateLabel
            // 
            this._dateLabel.AutoSize = true;
            this._dateLabel.Location = new System.Drawing.Point(34, 18);
            this._dateLabel.Name = "_dateLabel";
            this._dateLabel.Size = new System.Drawing.Size(31, 15);
            this._dateLabel.TabIndex = 1;
            this._dateLabel.Text = "Date";
            // 
            // _dateTimePicker
            // 
            this._dateTimePicker.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this._dateTimePicker.Location = new System.Drawing.Point(71, 12);
            this._dateTimePicker.Name = "_dateTimePicker";
            this._dateTimePicker.Size = new System.Drawing.Size(98, 23);
            this._dateTimePicker.TabIndex = 0;
            // 
            // _cancelButton
            // 
            this._cancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this._cancelButton.Location = new System.Drawing.Point(728, 14);
            this._cancelButton.Name = "_cancelButton";
            this._cancelButton.Size = new System.Drawing.Size(90, 30);
            this._cancelButton.TabIndex = 1;
            this._cancelButton.Text = "Cancel";
            this._cancelButton.UseVisualStyleBackColor = true;
            // 
            // _okButton
            // 
            this._okButton.Location = new System.Drawing.Point(632, 14);
            this._okButton.Name = "_okButton";
            this._okButton.Size = new System.Drawing.Size(90, 30);
            this._okButton.TabIndex = 0;
            this._okButton.Text = "Ok";
            this._okButton.UseVisualStyleBackColor = true;
            // 
            // RepaymentView
            // 
            this.AcceptButton = this._okButton;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this._cancelButton;
            this.ClientSize = new System.Drawing.Size(830, 595);
            this.Controls.Add(this.splitContainer1);
            this.Name = "RepaymentView";
            this.Text = "Repayment";
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this._commissionNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._penaltyNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._interestNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._principalNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._amountNumericUpDown)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.ComboBox _typeOfRepaymentComboBox;
        private System.Windows.Forms.Label _typeOfRepaymentLabel;
        private System.Windows.Forms.RichTextBox _commentRichTextBox;
        private System.Windows.Forms.Label _commentLabel;
        private System.Windows.Forms.NumericUpDown _commissionNumericUpDown;
        private System.Windows.Forms.Label _commissionLabel;
        private System.Windows.Forms.NumericUpDown _penaltyNumericUpDown;
        private System.Windows.Forms.Label _penaltyLabel;
        private System.Windows.Forms.NumericUpDown _interestNumericUpDown;
        private System.Windows.Forms.Label _interestLabel;
        private System.Windows.Forms.NumericUpDown _principalNumericUpDown;
        private System.Windows.Forms.Label _principalLabel;
        private System.Windows.Forms.NumericUpDown _amountNumericUpDown;
        private System.Windows.Forms.Label _amountLabel;
        private System.Windows.Forms.Label _dateLabel;
        private System.Windows.Forms.DateTimePicker _dateTimePicker;
        private Controls.ScheduleControl _scheduleControl;
        private System.Windows.Forms.Button _cancelButton;
        private System.Windows.Forms.Button _okButton;

    }
}