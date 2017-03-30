class BankAccount
  @@interest_rate
  @@accounts = []

  attr_accessor :balance

  def self.create
    a = BankAccount.new
    @@accounts.push(a)
    return a
  end

  def self.total_funds
    @@accounts.:+
    return @@acounts
  end

  def initialize
    @balance=0
  end

  def deposit(amt)
    @balance += amt
    return @balance
  end

  def withdraw(amt)
    unless @balance < amt
      puts "not enough funds for that amount"
      return
    end
    @balance -= amt
    return @balance
  end


end
