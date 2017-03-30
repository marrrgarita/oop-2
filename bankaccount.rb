class BankAccount
  @@interest_rate = 1.05
  @@accounts = []

  attr_accessor :balance

  def self.accounts
    @@accounts
  end

  def self.create
    a = BankAccount.new
    @@accounts.push(a)
    return a
  end

  def self.total_funds
    total = 0
    @@accounts.each do |account|
      total += account.balance
    end
    return total
  end

  def self.interest_time
    @@accounts.each do |account|
      account.balance = (account.balance) * @@interest_rate
    end
  end

  def initialize
    @balance=0.0
  end

  def deposit(amt)
    @balance += amt
    return @balance
  end

  def withdraw(amt)
    unless amt < @balance
      puts "not enough funds for that amount"
      return
    end
    @balance -= amt
    return @balance
  end
end
