require_relative 'transaction'

class Account

  attr_reader :balance, :statement

  def initialize
    @balance = DEFAULT_BALANCE
    @statement = ""
    @transactions = []
  end

  def print_statement
    @transactions.each do |transaction|
      @statement.prepend("\n#{transaction.date} || #{transaction.amount} || || #{transaction.balance}") if transaction.type == "credit"
      @statement.prepend("\n#{transaction.date} || || #{transaction.amount} || #{transaction.balance}") if transaction.type == "debit"
    end
    @statement.prepend("date || credit || debit || balance")
    @statement
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
