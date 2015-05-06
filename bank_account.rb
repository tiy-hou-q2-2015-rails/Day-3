# account
# balance
#  # deposit
#  # withdraw
#   if we ever dip below $0, apply a overdraft fee 34

# savings_account
# monthly_withdrawal_limit
#   # if we try to withdraw more than the limit, it will charge $34

class Account
  attr_accessor :balance

  # set the balance to a default value
  # this is called when Account.new
  def initialize
    self.balance = 0
  end

  def deposit(money)
    self.balance = balance + money
  end

  def withdraw(money)
    self.balance = balance - money
    if balance < 0
      self.balance = balance - 34
    end
  end
end

class SavingsAccount < Account
  attr_accessor :monthly_withdrawal_limit,
                :number_of_withdrawls_this_month

  def initialize
    self.monthly_withdrawal_limit = 3
    self.number_of_withdrawls_this_month = 0
    super # call the Account.initialize method
  end

  def withdraw(money)
    super
    self.number_of_withdrawls_this_month = number_of_withdrawls_this_month + 1
    if number_of_withdrawls_this_month > monthly_withdrawal_limit
      self.balance = balance - 34
    end
  end
end

# checking = Account.new
# checking.deposit 450
# checking.withdraw 35
# puts checking.balance

savings = SavingsAccount.new
savings.deposit 100
savings.withdraw 20
savings.withdraw 20
savings.withdraw 20
savings.withdraw 20
savings.withdraw 2
puts savings.balance # should be -$50
