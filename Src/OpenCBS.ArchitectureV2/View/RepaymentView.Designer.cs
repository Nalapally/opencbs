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
            this.buttonsPanel = new System.Windows.Forms.Panel();
            this._okButton = new System.Windows.Forms.Button();
            this._cancelButton = new System.Windows.Forms.Button();
            this._repaymentConfigurationPanel = new System.Windows.Forms.Panel();
            this._schedulePanel = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this._commissionNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._penaltyNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._interestNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._principalNumericUpDown)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._amountNumericUpDown)).BeginInit();
            this.buttonsPanel.SuspendLayout();
            this._repaymentConfigurationPanel.SuspendLayout();
            this._schedulePanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // _scheduleControl
            // 
            this._scheduleControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this._scheduleControl.Location = new System.Drawing.Point(0, 0);
            this._scheduleControl.Name = "_scheduleControl";
            this._scheduleControl.Size = new System.Drawing.Size(830, 343);
            this._scheduleControl.TabIndex = 39;
            // 
            // _typeOfRepaymentComboBox
            // 
            this._typeOfRepaymentComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this._typeOfRepaymentComboBox.FormattingEnabled = true;
            this._typeOfRepaymentComboBox.Location = new System.Drawing.Point(644, 75);
            this._typeOfRepaymentComboBox.Name = "_typeOfRepaymentComboBox";
            this._typeOfRepaymentComboBox.Size = new System.Drawing.Size(174, 23);
            this._typeOfRepaymentComboBox.TabIndex = 29;
            // 
            // _typeOfRepaymentLabel
            // 
            this._typeOfRepaymentLabel.AutoSize = true;
            this._typeOfRepaymentLabel.Location = new System.Drawing.Point(531, 78);
            this._typeOfRepaymentLabel.Name = "_typeOfRepaymentLabel";
            this._typeOfRepaymentLabel.Size = new System.Drawing.Size(107, 15);
            this._typeOfRepaymentLabel.TabIndex = 35;
            this._typeOfRepaymentLabel.Text = "Type of repayment";
            // 
            // _commentRichTextBox
            // 
            this._commentRichTextBox.Location = new System.Drawing.Point(598, 11);
            this._commentRichTextBox.Name = "_commentRichTextBox";
            this._commentRichTextBox.Size = new System.Drawing.Size(220, 52);
            this._commentRichTextBox.TabIndex = 27;
            this._commentRichTextBox.Text = "";
            // 
            // _commentLabel
            // 
            this._commentLabel.AutoSize = true;
            this._commentLabel.Location = new System.Drawing.Point(531, 14);
            this._commentLabel.Name = "_commentLabel";
            this._commentLabel.Size = new System.Drawing.Size(61, 15);
            this._commentLabel.TabIndex = 34;
            this._commentLabel.Text = "Comment";
            // 
            // _commissionNumericUpDown
            // 
            this._commissionNumericUpDown.DecimalPlaces = 2;
            this._commissionNumericUpDown.Location = new System.Drawing.Point(338, 99);
            this._commissionNumericUpDown.Maximum = new decimal(new int[] {
            -727379968,
            232,
            0,
            0});
            this._commissionNumericUpDown.Name = "_commissionNumericUpDown";
            this._commissionNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._commissionNumericUpDown.TabIndex = 26;
            // 
            // _commissionLabel
            // 
            this._commissionLabel.AutoSize = true;
            this._commissionLabel.Location = new System.Drawing.Point(258, 101);
            this._commissionLabel.Name = "_commissionLabel";
            this._commissionLabel.Size = new System.Drawing.Size(74, 15);
            this._commissionLabel.TabIndex = 33;
            this._commissionLabel.Text = "Commission";
            // 
            // _penaltyNumericUpDown
            // 
            this._penaltyNumericUpDown.DecimalPlaces = 2;
            this._penaltyNumericUpDown.Location = new System.Drawing.Point(338, 70);
            this._penaltyNumericUpDown.Maximum = new decimal(new int[] {
            -727379968,
            232,
            0,
            0});
            this._penaltyNumericUpDown.Name = "_penaltyNumericUpDown";
            this._penaltyNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._penaltyNumericUpDown.TabIndex = 25;
            // 
            // _penaltyLabel
            // 
            this._penaltyLabel.AutoSize = true;
            this._penaltyLabel.Location = new System.Drawing.Point(258, 72);
            this._penaltyLabel.Name = "_penaltyLabel";
            this._penaltyLabel.Size = new System.Drawing.Size(46, 15);
            this._penaltyLabel.TabIndex = 32;
            this._penaltyLabel.Text = "Penalty";
            // 
            // _interestNumericUpDown
            // 
            this._interestNumericUpDown.DecimalPlaces = 2;
            this._interestNumericUpDown.Location = new System.Drawing.Point(338, 41);
            this._interestNumericUpDown.Maximum = new decimal(new int[] {
            -727379968,
            232,
            0,
            0});
            this._interestNumericUpDown.Name = "_interestNumericUpDown";
            this._interestNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._interestNumericUpDown.TabIndex = 23;
            // 
            // _interestLabel
            // 
            this._interestLabel.AutoSize = true;
            this._interestLabel.Location = new System.Drawing.Point(258, 43);
            this._interestLabel.Name = "_interestLabel";
            this._interestLabel.Size = new System.Drawing.Size(46, 15);
            this._interestLabel.TabIndex = 30;
            this._interestLabel.Text = "Interest";
            // 
            // _principalNumericUpDown
            // 
            this._principalNumericUpDown.DecimalPlaces = 2;
            this._principalNumericUpDown.Location = new System.Drawing.Point(338, 12);
            this._principalNumericUpDown.Maximum = new decimal(new int[] {
            -727379968,
            232,
            0,
            0});
            this._principalNumericUpDown.Name = "_principalNumericUpDown";
            this._principalNumericUpDown.Size = new System.Drawing.Size(120, 23);
            this._principalNumericUpDown.TabIndex = 21;
            // 
            // _principalLabel
            // 
            this._principalLabel.AutoSize = true;
            this._principalLabel.Location = new System.Drawing.Point(258, 14);
            this._principalLabel.Name = "_principalLabel";
            this._principalLabel.Size = new System.Drawing.Size(53, 15);
            this._principalLabel.TabIndex = 28;
            this._principalLabel.Text = "Principal";
            // 
            // _amountNumericUpDown
            // 
            this._amountNumericUpDown.DecimalPlaces = 2;
            this._amountNumericUpDown.Location = new System.Drawing.Point(78, 41);
            this._amountNumericUpDown.Maximum = new decimal(new int[] {
            -727379968,
            232,
            0,
            0});
            this._amountNumericUpDown.Name = "_amountNumericUpDown";
            this._amountNumericUpDown.Size = new System.Drawing.Size(121, 23);
            this._amountNumericUpDown.TabIndex = 19;
            // 
            // _amountLabel
            // 
            this._amountLabel.AutoSize = true;
            this._amountLabel.Location = new System.Drawing.Point(21, 43);
            this._amountLabel.Name = "_amountLabel";
            this._amountLabel.Size = new System.Drawing.Size(51, 15);
            this._amountLabel.TabIndex = 24;
            this._amountLabel.Text = "Amount";
            // 
            // _dateLabel
            // 
            this._dateLabel.AutoSize = true;
            this._dateLabel.Location = new System.Drawing.Point(21, 14);
            this._dateLabel.Name = "_dateLabel";
            this._dateLabel.Size = new System.Drawing.Size(31, 15);
            this._dateLabel.TabIndex = 22;
            this._dateLabel.Text = "Date";
            // 
            // _dateTimePicker
            // 
            this._dateTimePicker.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this._dateTimePicker.Location = new System.Drawing.Point(78, 12);
            this._dateTimePicker.Name = "_dateTimePicker";
            this._dateTimePicker.Size = new System.Drawing.Size(121, 23);
            this._dateTimePicker.TabIndex = 31;
            // 
            // buttonsPanel
            // 
            this.buttonsPanel.Controls.Add(this._okButton);
            this.buttonsPanel.Controls.Add(this._cancelButton);
            this.buttonsPanel.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.buttonsPanel.Location = new System.Drawing.Point(0, 478);
            this.buttonsPanel.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.buttonsPanel.Name = "buttonsPanel";
            this.buttonsPanel.Size = new System.Drawing.Size(830, 50);
            this.buttonsPanel.TabIndex = 37;
            // 
            // _okButton
            // 
            this._okButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this._okButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this._okButton.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this._okButton.Font = new System.Drawing.Font("Arial", 9F);
            this._okButton.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._okButton.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this._okButton.Location = new System.Drawing.Point(546, 11);
            this._okButton.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this._okButton.Name = "_okButton";
            this._okButton.Size = new System.Drawing.Size(132, 31);
            this._okButton.TabIndex = 8;
            this._okButton.Text = "OK";
            this._okButton.UseVisualStyleBackColor = false;
            // 
            // _cancelButton
            // 
            this._cancelButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this._cancelButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this._cancelButton.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this._cancelButton.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this._cancelButton.Font = new System.Drawing.Font("Arial", 9F);
            this._cancelButton.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this._cancelButton.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this._cancelButton.Location = new System.Drawing.Point(684, 11);
            this._cancelButton.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this._cancelButton.Name = "_cancelButton";
            this._cancelButton.Size = new System.Drawing.Size(132, 31);
            this._cancelButton.TabIndex = 9;
            this._cancelButton.Text = "Cancel";
            this._cancelButton.UseVisualStyleBackColor = false;
            // 
            // _repaymentConfigurationPanel
            // 
            this._repaymentConfigurationPanel.Controls.Add(this._typeOfRepaymentLabel);
            this._repaymentConfigurationPanel.Controls.Add(this._typeOfRepaymentComboBox);
            this._repaymentConfigurationPanel.Controls.Add(this._amountLabel);
            this._repaymentConfigurationPanel.Controls.Add(this._commentRichTextBox);
            this._repaymentConfigurationPanel.Controls.Add(this._commentLabel);
            this._repaymentConfigurationPanel.Controls.Add(this._amountNumericUpDown);
            this._repaymentConfigurationPanel.Controls.Add(this._dateLabel);
            this._repaymentConfigurationPanel.Controls.Add(this._commissionNumericUpDown);
            this._repaymentConfigurationPanel.Controls.Add(this._commissionLabel);
            this._repaymentConfigurationPanel.Controls.Add(this._dateTimePicker);
            this._repaymentConfigurationPanel.Controls.Add(this._penaltyNumericUpDown);
            this._repaymentConfigurationPanel.Controls.Add(this._principalLabel);
            this._repaymentConfigurationPanel.Controls.Add(this._penaltyLabel);
            this._repaymentConfigurationPanel.Controls.Add(this._principalNumericUpDown);
            this._repaymentConfigurationPanel.Controls.Add(this._interestNumericUpDown);
            this._repaymentConfigurationPanel.Controls.Add(this._interestLabel);
            this._repaymentConfigurationPanel.Dock = System.Windows.Forms.DockStyle.Top;
            this._repaymentConfigurationPanel.Location = new System.Drawing.Point(0, 0);
            this._repaymentConfigurationPanel.Name = "_repaymentConfigurationPanel";
            this._repaymentConfigurationPanel.Size = new System.Drawing.Size(830, 135);
            this._repaymentConfigurationPanel.TabIndex = 38;
            // 
            // _schedulePanel
            // 
            this._schedulePanel.Controls.Add(this._scheduleControl);
            this._schedulePanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this._schedulePanel.Location = new System.Drawing.Point(0, 135);
            this._schedulePanel.Name = "_schedulePanel";
            this._schedulePanel.Size = new System.Drawing.Size(830, 343);
            this._schedulePanel.TabIndex = 39;
            // 
            // RepaymentView
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(830, 528);
            this.Controls.Add(this._schedulePanel);
            this.Controls.Add(this._repaymentConfigurationPanel);
            this.Controls.Add(this.buttonsPanel);
            this.Name = "RepaymentView";
            this.Text = "Repayment";
            ((System.ComponentModel.ISupportInitialize)(this._commissionNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._penaltyNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._interestNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._principalNumericUpDown)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._amountNumericUpDown)).EndInit();
            this.buttonsPanel.ResumeLayout(false);
            this._repaymentConfigurationPanel.ResumeLayout(false);
            this._repaymentConfigurationPanel.PerformLayout();
            this._schedulePanel.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private Controls.ScheduleControl _scheduleControl;
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
        private System.Windows.Forms.Panel buttonsPanel;
        private System.Windows.Forms.Button _okButton;
        private System.Windows.Forms.Button _cancelButton;
        private System.Windows.Forms.Panel _repaymentConfigurationPanel;
        private System.Windows.Forms.Panel _schedulePanel;


    }
}