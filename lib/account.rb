require_relative 'transaction'
require_relative 'statement'

class Account

  attr_reader :balance, :statement

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def statement_format
    Statement.new.format(@transactions)
  end

  def puts_statement
    puts statement_format
    "Thank you"
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new("credit", amount, @balance)
    "You deposited #{amount}"
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new("debit", amount, @balance)
    "You withdrew #{amount}"
  end

  DEFAULT_BALANCE = 0

end
