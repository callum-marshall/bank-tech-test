class Account

  attr_reader :balance, :statement

  def initialize
    @balance = DEFAULT_BALANCE
    @statement = ""
  end

  def print_statement
    @statement.prepend("date || credit || debit || balance")
    return @statement
  end

  def deposit(amount)
    @balance += amount
    @statement.prepend("\n#{date} || #{amount} || || #{balance}")
  end

  def withdraw(amount)
    @balance -= amount
    @statement.prepend("\n#{date} || || #{amount} || #{balance}")
  end

  DEFAULT_BALANCE = 0

  private

  def date
    return Time.now.strftime("%d/%m/%Y")
  end

end
