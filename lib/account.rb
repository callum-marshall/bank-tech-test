require_relative 'transaction'
require_relative 'statement'

class Account

  attr_reader :balance, :statement

  def initialize
    @balance = DEFAULT_BALANCE
    @transactions = []
  end

  def print_statement
    statement = Statement.new
    statement.print(@transactions)
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new("credit", amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new("debit", amount, @balance)
  end

  DEFAULT_BALANCE = 0

end
