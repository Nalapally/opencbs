# -*- coding: utf-8 -*-

def GetDescription():
    return "Нормальный"

def RepayCommission(installment):
    global commission
    if commission > 0:
        if installment.CommissionsUnpaid.Value < commission:
            installment.PaidCommissions += installment.CommissionsUnpaid
            commission -= installment.CommissionsUnpaid.Value
        else:
            installment.PaidCommissions = installment.PaidCommissions.Value + commission
            commission = 0
    return installment

def RepayPenalty(installment):
    global penalty
    if penalty > 0:
        installment.PaidFees = installment.PaidFees.Value + penalty
        penalty = 0
    return installment

def RepayInterest(installment):
    global interest    
    if interest > 0:
        interestUnpaid = installment.InterestsRepayment - installment.PaidInterests
        if interestUnpaid.Value < interest:
            installment.PaidInterests += interestUnpaid
            interest -= interestUnpaid.Value            
        else:
            installment.PaidInterests = installment.PaidInterests.Value + interest
            interest = 0
    return installment

def RepayPrincipal(installment):
    global principal
    if principal > 0:
        principalUnpaid = installment.CapitalRepayment - installment.PaidCapital
        if principalUnpaid.Value < principal:
            installment.PaidCapital += principalUnpaid
            principal -= principalUnpaid.Value
        else:
            installment.PaidCapital = installment.PaidCapital.Value + principal
            principal = 0
    return installment

# меняет график
def Repay(settings):
    global principal, interest, penalty, commission
    i = settings.Loan.GetFirstUnpaidInstallment().Number - 1
    principal = settings.Principal
    interest = settings.Interest
    penalty = settings.Penalty
    commission = settings.Commission
    settings.Amount = principal + interest + penalty + commission
    installments = settings.Loan.InstallmentList
    while len(installments) > i and (principal > 0 or interest > 0 or penalty > 0 or commission > 0):       
        installment = installments[i]
        installment = RepayCommission(installment)
        installment = RepayPenalty(installment)
        installment = RepayInterest(installment)
        installment = RepayPrincipal(installment)
        i += 1

# вызывается когда изменяется дата оплаты и при открытии окна оплаты(автоматический режим)
# меняет суммы к оплате по ОД, %, пени и комиссии
def GetInitAmounts(settings):    
    i = settings.Loan.GetFirstUnpaidInstallment().Number - 1
    installments = settings.Loan.InstallmentList
    principal = 0
    interest = 0
    penalty = settings.Loan.CalculateDailyAccrualUnpaidPenalties(settings.Date)
    commission = 0
    while True:       
        installment = installments[i]
        if installment.ExpectedDate > settings.Date:
            break
        principal += installment.CapitalRepayment.Value - installment.PaidCapital.Value
        interest += installment.InterestsRepayment.Value - installment.PaidInterests.Value
        commission += installment.CommissionsUnpaid.Value
        i += 1
        if len(installments) <= i:
            break
    settings.Principal = principal
    settings.Interest = interest
    settings.Penalty = penalty
    settings.Commission = commission
    settings.Amount = principal + interest + penalty + commission

# вызывается когда изменяется сумма к оплате(автоматический режим)
# меняет суммы к оплате по ОД, %, пени и комиссии
def GetAmounts(settings):
    amount = settings.Amount
    i = settings.Loan.GetFirstUnpaidInstallment().Number - 1
    installments = settings.Loan.InstallmentList
    installment = installments[i]
    principal = 0
    interest = 0
    penalty = settings.Loan.CalculateDailyAccrualUnpaidPenalties(settings.Date)
    commission = 0
    if amount < penalty:
        penalty = amount
    amount -= penalty
    while True:       
        installment = installments[i]

        unpaid = installment.CommissionsUnpaid.Value
        if unpaid > amount:
            unpaid = amount
        commission += unpaid
        amount -= unpaid
        if amount <= 0:
            break

        unpaid = installment.InterestsRepayment.Value - installment.PaidInterests.Value
        if unpaid > amount:
            unpaid = amount
        interest += unpaid
        amount -= unpaid
        if amount <= 0:
            break

        unpaid = installment.CapitalRepayment.Value - installment.PaidCapital.Value
        if unpaid > amount:
            unpaid = amount
        principal += unpaid
        amount -= unpaid
        if amount <= 0:
            break

        i += 1
        if len(installments) <= i:
            break
    settings.Principal = principal
    settings.Interest = interest
    settings.Penalty = penalty
    settings.Commission = commission