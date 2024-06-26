INSERT INTO [CURRENCIES] ([name], [is_pivot], [code], [is_swapped]) VALUES ('USD', 1, 'USD', 0)
GO

INSERT INTO [GeneralParameters]([key], [value]) VALUES('COUNTRY','Kyrgyzstan')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('WEEK_END_DAY1',0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('WEEK_END_DAY2',6)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('PAY_FIRST_INSTALLMENT_REAL_VALUE',0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('CITY_MANDATORY',0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('GROUP_MIN_MEMBERS',0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('GROUP_MAX_MEMBERS',20)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('NSG_MIN_MEMBERS',0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('NSG_MAX_MEMBERS',20)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('LATE_DAYS_AFTER_ACCRUAL_CEASES',NULL)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('ALLOWS_MULTIPLE_LOANS',1)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('ALLOWS_MULTIPLE_GROUPS',1)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('ACCOUNTING_PROCESS',1)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('DONOT_SKIP_WEEKENDS_IN_INSTALLMENTS_DATE',0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('INCREMENTAL_DURING_DAYOFFS',0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('CONTRACT_CODE_TEMPLATE', 'BC/YY/PC-LC/ID')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('INTERESTS_ALSO_CREDITED_IN_FL', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('ID_PATTERN', '[A-Z]{2}[0-9]{7}')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('ENFORCE_ID_PATTERN', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('SAVINGS_CODE_TEMPLATE', 'IC/BC/CS/ID')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('MAX_NUMBER_INSTALLMENT', '100')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('OLB_BEFORE_REPAYMENT', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('PENDING_SAVINGS_MODE', 'NONE')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('BAD_LOAN_DAYS', '180')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('VAT_RATE', '0')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('CEASE_LAIE_DAYS', '1000')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('MFI_NAME', NULL)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('CLIENT_AGE_MIN', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('CLIENT_AGE_MAX', 100)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('AUTOMATIC_ID', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('MAX_LOANS_COVERED', 10)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('MAX_GUARANTOR_AMOUNT', 2000000000)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('REPORT_TIMEOUT', '300')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('INTEREST_RATE_DECIMAL_PLACES', '2')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('STOP_WRITEOFF_PENALTY', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('MODIFY_ENTRY_FEE', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('USE_MANDATORY_SAVING_ACCOUNT', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('USE_DAILY_ACCRUAL_OF_PENALTY', 0)
INSERT INTO [GeneralParameters]([key], [value]) VALUES('NUMBER_GROUP_SEPARATOR', ' ')
INSERT INTO [GeneralParameters]([key], [value]) VALUES('NUMBER_DECIMAL_SEPARATOR', ',')
GO

INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('client_name', '1')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('amount', '1')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('effect_date', '1')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('phone_num', '1')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('address', '1')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('loan_officer', '1')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('contract_id', '0')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('show_only_late_loans', '1')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('contract_status', '1')
INSERT INTO [dbo].[AlertSettings] ([parameter], [value]) VALUES('loan_status', '1')
GO

INSERT INTO [InstallmentTypes]([name], [nb_of_days], [nb_of_months]) VALUES('Monthly', 0, 1)
INSERT INTO [InstallmentTypes]([name], [nb_of_days], [nb_of_months]) VALUES('Weekly', 7, 0)
INSERT INTO [InstallmentTypes]([name], [nb_of_days], [nb_of_months]) VALUES('Daily', 1, 0)
INSERT INTO [InstallmentTypes]([name], [nb_of_days], [nb_of_months]) VALUES('Maturity', 0, 0)
GO

INSERT INTO [ProvisioningRules]([id], [number_of_days_min], [number_of_days_max],  [provisioning_value],[provisioning_interest],[provisioning_penalty]) VALUES(1, 0, 0, 0.02, 0.02, 0.02)
INSERT INTO [ProvisioningRules]([id], [number_of_days_min], [number_of_days_max],  [provisioning_value],[provisioning_interest],[Provisioning_penalty]) VALUES(2, 1, 30, 0.1, 0.1, 0.1)
INSERT INTO [ProvisioningRules]([id], [number_of_days_min], [number_of_days_max],  [provisioning_value],[provisioning_interest],[provisioning_penalty]) VALUES(3, 31, 60, 0.25, 0.25, 0.25)
INSERT INTO [ProvisioningRules]([id], [number_of_days_min], [number_of_days_max],  [provisioning_value],[provisioning_interest],[provisioning_penalty]) VALUES(4, 61, 90, 0.5, 0.5, 0.5)
INSERT INTO [ProvisioningRules]([id], [number_of_days_min], [number_of_days_max],  [provisioning_value],[provisioning_interest],[provisioning_penalty]) VALUES(5, 91, 180, 0.75, 0.75, 0.75)
INSERT INTO [ProvisioningRules]([id], [number_of_days_min], [number_of_days_max],  [provisioning_value],[provisioning_interest],[provisioning_penalty]) VALUES(6, 181, 365, 1, 1, 1)
INSERT INTO [ProvisioningRules]([id], [number_of_days_min], [number_of_days_max],  [provisioning_value],[provisioning_interest],[provisioning_penalty]) VALUES(7, 366, 99999, 1, 1, 1)
INSERT INTO [ProvisioningRules]([id], [number_of_days_min], [number_of_days_max],  [provisioning_value],[provisioning_interest],[provisioning_penalty]) VALUES(8, -1, -1, 0.1, 0.1, 0.1)
GO

INSERT INTO [Provinces]([name],[deleted]) VALUES('Paris',0)
INSERT INTO [Districts]([name], [province_id],[deleted]) VALUES('Paris', 1,0)
INSERT INTO [EconomicActivities]([name], [deleted]) VALUES('Agriculture',0)
INSERT INTO [Users]([deleted], [user_name], [user_pass], [role_code], [first_name], [last_name], [mail], [sex]) 
VALUES(0, 'admin', 'admin', 'SUPER', 'admin','admin','Not Set', 'M')
GO

SET IDENTITY_INSERT [Roles] ON
INSERT INTO [dbo].[Roles] ([id], [code], [deleted], [description]) VALUES (1, 'ADMIN',0,'Administrator role')
INSERT INTO [dbo].[Roles] ([id], [code], [deleted], [description]) VALUES (2, 'CASHI',0,'Cashier role')
INSERT INTO [dbo].[Roles] ([id], [code], [deleted], [description]) VALUES (3, 'LOF',0,'Loan officer role')
INSERT INTO [dbo].[Roles] ([id], [code], [deleted], [description]) VALUES (4, 'SUPER',0,'SUPER role')
INSERT INTO [dbo].[Roles] ([id], [code], [deleted], [description]) VALUES (5, 'VISIT',0,'Visitor role')
SET IDENTITY_INSERT [Roles] OFF
GO

INSERT INTO [dbo].[UserRole] ([user_id], [role_id]) VALUES (1,1)
GO
SET IDENTITY_INSERT [MenuItems] ON
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (1, 'mnuClients')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (2, 'mnuNewClient')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (3, 'mnuNewPerson')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (4, 'mnuNewGroup')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (5, 'mnuNewVillage')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (6, 'newCorporateToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (7, 'mnuSearchClient')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (8, 'mnuContracts')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (9, 'mnuSearchContract')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (10, 'reasignToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (11, 'mnuAccounting')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (12, 'mnuChartOfAccounts')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (13, 'accountingRulesToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (14, 'trialBalanceToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (15, 'toolStripMenuItemAccountView')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (16, 'manualEntriesToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (17, 'standardToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (18, 'menuItemExportTransaction')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (22, 'exportImportCustomizableToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (23, 'mnuConfiguration')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (24, 'menuItemAddUser')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (25, 'rolesToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (26, 'tellersToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (27, 'branchesToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (28, 'changePasswordToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (29, 'languagesToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (30, 'frenchToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (31, 'englishToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (32, 'russianToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (33, 'kyrgyzToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (34, 'spanishToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (35, 'portugueseToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (36, 'mnuPackages')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (37, 'savingProductsToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (38, 'menuItemCollateralProducts')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (39, 'guaranteeProductsToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (40, 'toolStripMenuItemFundingLines')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (41, 'mnuDomainOfApplication')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (42, 'menuItemLocations')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (43, 'toolStripMenuItemInstallmentTypes')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (44, 'miContractCode')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (45, 'menuItemExchangeRate')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (46, 'currenciesToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (47, 'menuItemApplicationDate')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (48, 'menuItemSetting')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (49, 'menuItemAdvancedSettings')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (50, 'customizableFieldsToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (51, 'customizableExportImportToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (52, 'createCustomizableExportFileToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (53, 'createCustomizableImportFileToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (54, 'openExistingCustomizableFileToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (55, 'mView')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (56, 'miAuditTrail')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (57, 'miReports')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (58, 'mnuDatamanagement')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (59, 'menuItemDatabaseControlPanel')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (60, 'menuItemDatabaseMaintenance')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (62, 'closeTellerToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (63, 'mnuWindow')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (64, 'mnuHelp')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (65, 'menuItemAboutOctopus')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (66, 'octopusForumToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (67, 'questionnaireToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (68, 'userGuideToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (69, 'wIKIHelpToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (70, 'advancedCustomizableFieldsToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (71, 'mnuCreditScoringQuestions')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (72, 'mnuExtensionManager')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (73, 'mnuNewClosure')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (61, 'tellerManagementToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (74, 'tellerOperationsToolStripMenuItem')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (75, 'mnuSettings')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (76, 'mnuSecurity')
INSERT INTO [dbo].[MenuItems]([id], [component_name]) VALUES (77, 'mnuProducts')
SET IDENTITY_INSERT [MenuItems] OFF
GO

INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (2, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (2, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (2, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (10, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (10, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (10, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (39, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (39, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (39, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (18, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (18, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (18, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (19, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (19, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (19, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (15, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (15, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (15, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (64, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (64, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (50, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (50, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (50, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (37, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (37, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (37, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (24, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (24, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (24, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (21, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (21, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (21, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (36, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (36, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (36, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (49, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (49, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (49, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (41, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (41, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (41, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (42, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (42, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (42, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (43, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (43, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (43, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (44, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (44, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (44, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (45, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (45, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (45, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (46, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (46, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (46, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (47, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (47, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (47, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (56, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (56, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (56, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (72, 1, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (72, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (72, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (72, 4, 'true')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (72, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (61, 1, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (61, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (61, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (61, 4, 'true')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (61, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (62, 1, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (62, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (62, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (62, 4, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (62, 5, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (74, 1, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (74, 2, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (74, 3, 'false')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (74, 4, 'true')
INSERT INTO [dbo].[AllowedRoleMenus] ([menu_item_id],[role_id] ,[allowed]) VALUES (74, 5, 'false')
GO

-- Adding some actions for allow/prohibit in roles
SET IDENTITY_INSERT [ActionItems] ON
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (1, 'LoanServices','SaveLoan')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (2, 'LoanServices','Disburse')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (3, 'LoanServices','UpdateContractStatus')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (4, 'LoanServices','CancelLastEvent')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (5, 'ClientServices','SavePerson')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (6, 'LoanServices','Repay')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (7, 'LoanServices', 'Reschedule' )
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (8, 'LoanServices', 'ManualInterestCalculation' )
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (9, 'LoanServices', 'ManualFeesCalculation' )
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (10, 'LoanServices', 'ChangeRepaymentType' )
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (11, 'LoanServices', 'CanUserModifyEntryFees')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (12, 'SavingServices','SaveContract')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (13, 'SavingServices','CloseAndWithdraw')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (14, 'SavingServices','CloseAndTransfer')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (15, 'SavingServices','Transfer')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (16, 'SavingServices','Withdraw')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (17, 'SavingServices','Deposit')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (18, 'SavingServices','CanUserMakeBalanceNegative')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (19, 'LoanServices','WriteOff')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (20, 'SavingServices','SpecialOperation')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (21, 'ExchangeRateServices', 'SaveRate')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (22, 'SavingServices', 'AllowOperationsDuringPendingDeposit')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (23, 'SavingServices', 'AllowSettingSavingsOperationsFeesManually')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (24, 'SavingServices', 'FirstDeposit')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (25, 'ClientServices','AddExistingMember')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (26, 'ClientServices','RemoveMember')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (27, 'LoanServices', 'PerformBackDateOperations')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (28, 'LoanServices', 'PerformFutureDateOperations')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (29, 'SavingServices', 'PerformBackDateOperations')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (30, 'SavingServices', 'PerformFutureDateOperations')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (31, 'LoanServices', 'AddTranche')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (32, 'LoanServices', 'WaiveFee')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (33, 'ClientServices', 'SaveSolidarityGroup')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (34, 'LoanServices', 'ModifyDisbursementDate')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (35, 'LoanServices', 'ModifyFirstInstalmentDate')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (36, 'ClientServices', 'ModifyBadClient')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (37, 'LoanServices', 'ModifyGuarantorsCollaterals')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (38, 'ClientServices', 'SaveCorporate')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (39, 'ClientServices', 'SaveNonSolidarityGroup')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (40, 'LoanServices','ManualScheduleBeforeDisbursement')
INSERT INTO [dbo].[ActionItems] ([id], [class_name],[method_name]) VALUES (41, 'LoanServices','ManualScheduleAfterDisbursement')

GO

SET IDENTITY_INSERT [ActionItems] OFF
GO

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (1, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (1, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (2, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (2, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (2, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (3, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (3, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (3, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (4, 2, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (19, 1, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (19, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (19, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (19, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (20, 1, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (20, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (20, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (20, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (27, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (27, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (27, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (28, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (28, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (28, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (29, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (29, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (29, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (30, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (30, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (30, 5, 'false')

INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (37, 1, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (37, 2, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (37, 3, 'false')
INSERT INTO [dbo].[AllowedRoleActions] ([action_item_id],[role_id] ,[allowed])
VALUES (37, 5, 'false')

INSERT INTO [Cycles] ([name]) VALUES ('Default')
GO

INSERT INTO [AmountCycles] ([cycle_id],[number],[amount_min],[amount_max]) VALUES (1,1,100,1000)
INSERT INTO [AmountCycles] ([cycle_id],[number],[amount_min],[amount_max]) VALUES (1,2,100,10000)
INSERT INTO [AmountCycles] ([cycle_id],[number],[amount_min],[amount_max]) VALUES (1,3,100,100000)
INSERT INTO [AmountCycles] ([cycle_id],[number],[amount_min],[amount_max]) VALUES (1,4,100,1000000)
INSERT INTO [AmountCycles] ([cycle_id],[number],[amount_min],[amount_max]) VALUES (1,5,100,10000000)
GO

INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(1,1,100)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(2,101,500)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(3,501,1000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(4,1001,2000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(5,2001,5000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(6,5001,10000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(7,10001,20000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(8,20001,50000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(9,50001,100000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(10,100001,200001)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(11,200001,500000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(12,500001,600000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(13,600001,700000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(14,700001,800000)
INSERT INTO [LoanScale]([id],[ScaleMin],[ScaleMax]) VALUES(15,800001,1000000)
GO

INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Pending')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Validated')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Refused')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Abandoned')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Active')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Closed')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Written-off')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Postponed')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Deleted')
INSERT INTO [dbo].[Statuses] ([status_name]) VALUES ('Non-accrual')
GO

INSERT INTO FundingLines (name, begin_date, end_date, amount, purpose, deleted, currency_id) 
VALUES('DEFAULT_FUNDING_LINE', GETDATE(), '2020-01-01', 922337203685477, 'DEFAULT_FUNDING_LINE', 0, 1)

DECLARE @id INT

SELECT @id = id
FROM FundingLines
WHERE name = 'DEFAULT_FUNDING_LINE'

INSERT INTO FundingLineEvents (code, amount, direction, fundingline_id, deleted, creation_date, type)
VALUES('UNLIMITED', 922337203685477, 1, @id, 0, GETDATE(), 0)
GO

INSERT INTO [dbo].[CollateralPropertyTypes] ([name]) VALUES ('Number')
INSERT INTO [dbo].[CollateralPropertyTypes] ([name]) VALUES ('String')
INSERT INTO [dbo].[CollateralPropertyTypes] ([name]) VALUES ('Date')
INSERT INTO [dbo].[CollateralPropertyTypes] ([name]) VALUES ('Collection')
INSERT INTO [dbo].[CollateralPropertyTypes] ([name]) VALUES ('Owner')
GO

INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LOVE', 'Loan Validation Event', 10, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LODE', 'Loan Disbursement Event', 20, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('RGLE', 'Repayment of Good Loan Event', 40, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('RBLE', 'Repayment of Bad Loan Event', 50, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('ROWO', 'Repayment Over Write-Off', 60, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('RRLE', 'Repayment for Rescheduled Loan Event', 70, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('ROLE', 'Reschedule Of Loan Event', 80, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('WROE', 'Write-Off Even', 90, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('TEET', 'Tranche event', 100, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('APR', 'Anticipated Partial Repayment', 110, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('ATR', 'Anticipated Total Repayment', 120, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('APTR', 'Anticipated Partial Total Repayment', 130, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SVIE', 'New saving book', 140, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SVDE', 'Deposit', 150, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SVWE', 'Withdrawal', 160, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SDTE', 'Outgoing transfer', 170, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SCTE', 'Incoming transfer', 180, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SIAE', 'Accrued interests', 190, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SIPE', 'Posting of accrued interests', 200, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SMFE', 'Management fee for a period', 220, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SCLE', 'Saving closure', 230, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('FLNE', 'Funding line event', 240, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('ULIE', 'User login', 250, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('ULOE', 'User logout', 260, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SOFE', 'Overdraft fee', 270, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SVAE', 'Agio', 280, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SVCE', 'Closing of a savings account', 290, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SPDE', 'Saving pending deposit event', 300, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SVRE', 'Savings reopen event', 310, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SVLD', 'Savings loan disbursement event', 315, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SRLE', 'Savings repayment for loan event', 316, 1)


INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('GLLL', 'Good Loan Late Loan', 320, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('GLBL', 'Good Loan Bad Loan', 330, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LLGL', 'Late Loan Good Loan', 340, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LLBL', 'Late Loan Bad Loan', 350, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('BLGL', 'Bad Loan Good Loan', 360, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('BLLL', 'Bad Loan Late Loan', 370, 1)

INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('GLRL', 'Late Loan Rescheduled', 380, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('BLRL', 'Bad Loan Rescheduled', 390, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LLRL', 'Late Loan Rescheduled', 400, 1)

INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LLPE', 'Loan provision event', 410, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LIAE', 'Loan accrued interest event', 420, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('CSUE', 'Client save/update event', 430, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('UMEE','Manual accounting entry event',440, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('USBE','Manual standard booking event',450, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SPDR', 'Saving pending deposit refused event', 470, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SOCE', 'Savings special operation credit', 480, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SODE', 'Savings special operation dredit', 490, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SDIT', 'Saving debit inter-branch transfer', 185, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SCIT', 'Saving credit inter-branch transfer', 186, 1)

INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE0','Entry fees 0',500, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE1','Entry fees 1',510, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE2','Entry fees 2',520, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE3','Entry fees 3',530, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE4','Entry fees 4',540, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE5','Entry fees 5',550, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE6','Entry fees 6',560, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE7','Entry fees 7',570, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE8','Entry fees 8',580, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES('LEE9','Entry fees 9',590, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('UOTE', 'User open teller', 600, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('UCTE', 'User close teller', 610, 0)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LCIE', 'Loan credit insurance event', 620, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LCIP', 'Loan credit insurance premium event', 630, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LCIW', 'Loan credit insurance Write-off event', 640, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SBCS', 'Savings Block Compulsory Savings', 317, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('SUCS', 'Savings Unblock Compulsory Savings', 318, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LOCE', 'Loan Close Event', 650, 0)

INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('CPDE', 'Close amount Positive Difference Event', 660, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('CNDE', 'Close amount Negative Difference Event', 670, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('OPDE', 'Open amount Positive Difference Event', 680, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('ONDE', 'Open amount Negative Difference Event', 690, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('ODAE', 'Open Day Amount Event', 700, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('CDAE', 'Close Day Amount Event', 710, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('MSCE', 'Manual Schedule Change Event',720, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('LPAE', 'Loan Penalty Accrual Event', 730, 1)
INSERT INTO dbo.EventTypes (event_type, description, sort_order, accounting) VALUES ('AILE', 'Accrual Interest Loan Event', 740, 1)

INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('LCIE', 'commission')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('LCIE', 'principal')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('LCIP', 'commission')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('LCIP', 'principal')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('LCIW', 'commission')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('LCIW', 'principal')
GO

INSERT INTO EventAttributes (event_type, name) VALUES('RRLE', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES('RRLE', 'penalties')
INSERT INTO EventAttributes (event_type, name) VALUES('RRLE', 'commissions')
INSERT INTO EventAttributes (event_type, name) VALUES('RRLE', 'interests')

INSERT INTO EventAttributes (event_type, name) VALUES('RGLE', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES('RGLE', 'penalties')
INSERT INTO EventAttributes (event_type, name) VALUES('RGLE', 'commissions')
INSERT INTO EventAttributes (event_type, name) VALUES('RGLE', 'interests')

INSERT INTO EventAttributes (event_type, name) VALUES('RBLE', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES('RBLE', 'penalties')
INSERT INTO EventAttributes (event_type, name) VALUES('RBLE', 'commissions')
INSERT INTO EventAttributes (event_type, name) VALUES('RBLE', 'interests')

INSERT INTO EventAttributes (event_type, name) VALUES('ATR', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES('ATR', 'penalties')
INSERT INTO EventAttributes (event_type, name) VALUES('ATR', 'commissions')
INSERT INTO EventAttributes (event_type, name) VALUES('ATR', 'interests')

INSERT INTO EventAttributes (event_type, name) VALUES('APR', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES('APR', 'penalties')
INSERT INTO EventAttributes (event_type, name) VALUES('APR', 'commissions')
INSERT INTO EventAttributes (event_type, name) VALUES('APR', 'interests')

INSERT INTO EventAttributes (event_type, name) VALUES('APTR', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES('APTR', 'penalties')
INSERT INTO EventAttributes (event_type, name) VALUES('APTR', 'commissions')
INSERT INTO EventAttributes (event_type, name) VALUES('APTR', 'interests')

INSERT INTO EventAttributes (event_type, name) VALUES('ROWO', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES('ROWO', 'penalties')
INSERT INTO EventAttributes (event_type, name) VALUES('ROWO', 'commissions')
INSERT INTO EventAttributes (event_type, name) VALUES('ROWO', 'interests')

INSERT INTO EventAttributes (event_type, name) VALUES('LODE', 'amount')

INSERT INTO EventAttributes (event_type, name) VALUES('GLLL', 'olb')
INSERT INTO EventAttributes (event_type, name) VALUES('GLBL', 'olb')
INSERT INTO EventAttributes (event_type, name) VALUES('LLGL', 'olb')
INSERT INTO EventAttributes (event_type, name) VALUES('LLBL', 'olb')
INSERT INTO EventAttributes (event_type, name) VALUES('BLGL', 'olb')
INSERT INTO EventAttributes (event_type, name) VALUES('BLLL', 'olb')

INSERT INTO EventAttributes (event_type, name) VALUES('GLRL', 'olb')
INSERT INTO EventAttributes (event_type, name) VALUES('LLRL', 'olb')
INSERT INTO EventAttributes (event_type, name) VALUES('BLRL', 'olb')

INSERT INTO EventAttributes (event_type, name) VALUES('GLLL', 'overdue_principal')
INSERT INTO EventAttributes (event_type, name) VALUES('GLBL', 'overdue_principal')
INSERT INTO EventAttributes (event_type, name) VALUES('LLGL', 'overdue_principal')
INSERT INTO EventAttributes (event_type, name) VALUES('LLBL', 'overdue_principal')
INSERT INTO EventAttributes (event_type, name) VALUES('BLGL', 'overdue_principal')
INSERT INTO EventAttributes (event_type, name) VALUES('BLLL', 'overdue_principal')

INSERT INTO EventAttributes (event_type, name) VALUES('GLRL', 'overdue_principal')
INSERT INTO EventAttributes (event_type, name) VALUES('LLRL', 'overdue_principal')
INSERT INTO EventAttributes (event_type, name) VALUES('BLRL', 'overdue_principal')

INSERT INTO EventAttributes (event_type, name) VALUES('ROLE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES('ROLE', 'interest')

INSERT INTO EventAttributes (event_type, name) VALUES('WROE', 'olb')
INSERT INTO EventAttributes (event_type, name) VALUES('WROE', 'accrued_interests')
INSERT INTO EventAttributes (event_type, name) VALUES('WROE', 'accrued_penalties')
INSERT INTO EventAttributes (event_type, name) VALUES('WROE', 'past_due_days')
INSERT INTO EventAttributes (event_type, name) VALUES('WROE', 'overdue_principal')

INSERT INTO EventAttributes (event_type, name) VALUES('LLPE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES('TEET', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES('LIAE', 'accrued_interest')

INSERT INTO EventAttributes (event_type, name) VALUES ('SVIE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SIPE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SIAE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVDE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVWE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SDTE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SCTE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SCLE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVRE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVLD', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SPDE', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SPDR', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SCIT', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SDIT', 'amount')
INSERT INTO EventAttributes (event_type, name) VALUES ('SRLE', 'amount')

INSERT INTO EventAttributes (event_type, name) VALUES ('SVIE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVDE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVWE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SDTE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SCTE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SMFE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SCLE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SOFE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVAE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVCE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVRE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SVLD', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SPDE', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SCIT', 'fees')
INSERT INTO EventAttributes (event_type, name) VALUES ('SDIT', 'fees')

INSERT INTO EventAttributes (event_type, name) VALUES('LEE0', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE1', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE2', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE3', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE4', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE5', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE6', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE7', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE8', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES('LEE9', 'fee')
INSERT INTO EventAttributes (event_type, name) VALUES ('LCIE', 'commission')
INSERT INTO EventAttributes (event_type, name) VALUES ('LCIE', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES ('LCIP', 'commission')
INSERT INTO EventAttributes (event_type, name) VALUES ('LCIP', 'principal')
INSERT INTO EventAttributes (event_type, name) VALUES ('LCIW', 'commission')
INSERT INTO EventAttributes (event_type, name) VALUES ('LCIW', 'principal')

INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('SBCS', 'amount')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('SUCS', 'amount')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('SUCS', 'amount')

INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('CPDE', 'amount')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('CNDE', 'amount')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('OPDE', 'amount')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('ONDE', 'amount')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('CDAE', 'amount')
INSERT INTO [dbo].[EventAttributes] (event_type, name) VALUES ('ODAE', 'amount')


GO

INSERT INTO [dbo].[ClientTypes] ([type_name])  VALUES ('All')
INSERT INTO [dbo].[ClientTypes] ([type_name])  VALUES ('Group')
INSERT INTO [dbo].[ClientTypes] ([type_name])  VALUES ('Individual')
INSERT INTO [dbo].[ClientTypes] ([type_name])  VALUES ('Corporate')
INSERT INTO [dbo].[ClientTypes] ([type_name])  VALUES ('Village')
GO

INSERT INTO dbo.Branches (name, code)
VALUES ('Default', 'DEF')
GO

INSERT INTO [PaymentMethods] ([name])
VALUES ('Cash')
INSERT INTO [PaymentMethods] ([name])
VALUES ('Cheque')
INSERT INTO [PaymentMethods] ([name])
VALUES ('DirectDebit')
INSERT INTO [PaymentMethods] ([name])
VALUES ('WireTransfer')
INSERT INTO [PaymentMethods] ([name])
VALUES ('DebitCard')
INSERT INTO [PaymentMethods] ([name])
VALUES ('Voucher')
INSERT INTO [PaymentMethods] ([name])
VALUES ('Savings')
GO

INSERT INTO dbo.UsersBranches (user_id, branch_id)
SELECT 1, id FROM dbo.Branches WHERE deleted = 0
GO

INSERT INTO [dbo].[CycleObjects] ([name])  VALUES ('Loan amount')
INSERT INTO [dbo].[CycleObjects] ([name])  VALUES ('Interest rate')
INSERT INTO [dbo].[CycleObjects] ([name])  VALUES ('Number of installments')
GO

INSERT INTO [dbo].[AdvancedFieldsEntities] ([name]) VALUES ('Individual')
INSERT INTO [dbo].[AdvancedFieldsEntities] ([name]) VALUES ('SG')
INSERT INTO [dbo].[AdvancedFieldsEntities] ([name]) VALUES ('NSG')
INSERT INTO [dbo].[AdvancedFieldsEntities] ([name]) VALUES ('Corporate')
INSERT INTO [dbo].[AdvancedFieldsEntities] ([name]) VALUES ('Loan')
INSERT INTO [dbo].[AdvancedFieldsEntities] ([name]) VALUES ('Savings')
GO

INSERT INTO [dbo].[AdvancedFieldsTypes] ([name]) VALUES ('Boolean')
INSERT INTO [dbo].[AdvancedFieldsTypes] ([name]) VALUES ('Number')
INSERT INTO [dbo].[AdvancedFieldsTypes] ([name]) VALUES ('String')
INSERT INTO [dbo].[AdvancedFieldsTypes] ([name]) VALUES ('Date')
INSERT INTO [dbo].[AdvancedFieldsTypes] ([name]) VALUES ('Collection')
INSERT INTO [dbo].[AdvancedFieldsTypes] ([name]) VALUES ('Client')
GO

INSERT INTO dbo.AdvancedFields ( entity_id, type_id, name, [desc], is_mandatory, is_unique )
VALUES  ( 5, 5, 'Type of clients', '', 0, 0 )
GO

INSERT INTO dbo.AdvancedFieldsCollections ( field_id, value ) VALUES  ( 1, 'Urban' )
INSERT INTO dbo.AdvancedFieldsCollections ( field_id, value ) VALUES  ( 1, 'Rural' )
GO

INSERT INTO dbo.FiscalYear (name, open_date, close_date)
VALUES  ('New Year', '2000-01-01', NULL)
GO

INSERT INTO [Packages]
	([code]
	,[name]
	,[amount_min]
	,[amount_max]
	,[interest_rate]
	,[installment_type]
	,[grace_period]
	,[number_of_installments_min]
	,[number_of_installments_max]
	,[anticipated_total_repayment_penalties]
	,[loan_type]
	,[keep_expected_installment]
	,[charge_interest_within_grace_period]
	,[non_repayment_penalties_based_on_overdue_interest]
	,[non_repayment_penalties_based_on_initial_amount]
	,[non_repayment_penalties_based_on_olb]
	,[non_repayment_penalties_based_on_overdue_principal]
	,[fundingLine_id]
	,[currency_id]
	,[rounding_type]
	,[anticipated_partial_repayment_penalties]
	,[anticipated_partial_repayment_base]
	,[anticipated_total_repayment_base])
	VALUES('default', 'Loan Product', 1000, 1000000, 0.36, 1, 0, 3, 36, 0, 3, 1, 1, 0.001, 0,0, 0.001, 1, 1, 3, 0, 2, 2)
	
DECLARE @packageId INT
SELECT @packageId = SCOPE_IDENTITY()
INSERT INTO [PackagesClientTypes] ([client_type_id], [package_id]) SELECT id, @packageId FROM [ClientTypes]
GO

INSERT INTO [SavingProducts]
	([name]
    ,[code]
    ,[initial_amount_min]
    ,[initial_amount_max]
    ,[balance_min]
    ,[balance_max]
    ,[deposit_min]
    ,[deposit_max]
    ,[withdraw_min]
    ,[withdraw_max]
    ,[transfer_min]
    ,[transfer_max]
    ,[interest_rate]
    ,[entry_fees]
    ,[currency_id]
    ,[product_type])
      VALUES('Saving Product', 'default', 0, 100000000, 0, 100000000, 1, 100000000, 1, 100000000, 1, 100000000, 0, 0, 1, 'B')
      
DECLARE @savingProductId INT
SELECT @savingProductId = SCOPE_IDENTITY()

INSERT INTO [SavingBookProducts] 
	([id]
	,[interest_base]
	,[interest_frequency]
	,[calcul_amount_base]
	,[withdraw_fees_type]
	,[flat_withdraw_fees]
	,[transfer_fees_type]
	,[flat_transfer_fees]
	,[is_ibt_fee_flat]
	,[ibt_fee]
	,[deposit_fees]
	,[close_fees]
	,[management_fees]
	,[management_fees_freq]
	,[overdraft_fees]
	,[agio_fees]
	,[agio_fees_freq]
	,[cheque_deposit_min]
	,[cheque_deposit_max]
	,[cheque_deposit_fees]
	,[reopen_fees]
	,[use_term_deposit]
	)
	VALUES 
	(@savingProductId, 10, 10, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 3, 1, 100000000, 0, 0, 0) 
INSERT INTO [SavingProductsClientTypes] ([saving_product_id] ,[client_type_id]) SELECT @savingProductId, id FROM [ClientTypes]
GO

INSERT INTO dbo.LateDaysRange ([Min], [Max], [Label] ) VALUES (0, 0, 'Performing') 
INSERT INTO dbo.LateDaysRange ([Min], [Max], [Label], [Color]) VALUES (1, 30, 'PAR 1-30','#EAC81C') 
INSERT INTO dbo.LateDaysRange ([Min], [Max], [Label], [Color])  VALUES (31, 60, 'PAR 31-60','#EAA01C')
INSERT INTO dbo.LateDaysRange ([Min], [Max], [Label], [Color])  VALUES (61, 90, 'PAR 61-90','#EA781C')
INSERT INTO dbo.LateDaysRange ([Min], [Max], [Label], [Color])  VALUES (91, 180, 'PAR 91-180','#EA501C')
INSERT INTO dbo.LateDaysRange ([Min], [Max], [Label], [Color]) VALUES (181, 365, 'PAR 181-365','#EA281C')
INSERT INTO dbo.LateDaysRange ([Min], [Max], [Label], [Color]) VALUES (365, 1000000, 'PAR >365','#EA001C')
INSERT INTO dbo.LateDaysRange ([Min], [Max], [Label]) VALUES (0, 1000000, 'Total')
GO

INSERT INTO [TechnicalParameters]([name], [value]) VALUES ('version', 'v14.10.0.0')
INSERT INTO [TechnicalParameters]([name], [value]) VALUES ('last_id', '0')
INSERT INTO [TechnicalParameters]([name], [value]) VALUES ('BuildNumber', '0')
GO

INSERT INTO dbo.WriteOffOptions VALUES('Standard')
GO