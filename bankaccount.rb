class BankAccount
  @@interest_rate
  @@accounts = []

  attr_accessor :balance

  def self.create
    a = BankAccount.new
    @@accounts.push(a)
    return a
  end
  
  def initialize
    @balance=0
  end

  def deposit(amt)
    @balance += amt
    return @balance
  end

  def withdraw(amt)
    @balance -= amt
    return @balance
  end


end
