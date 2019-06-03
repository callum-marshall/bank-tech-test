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
    value = currency_format(amount)
    balance = currency_format(@balance)
    @statement.prepend("\n#{date} || #{value} || || #{balance}")
  end

  def withdraw(amount)
    @balance -= amount
    value = currency_format(amount)
    balance = currency_format(@balance)
    @statement.prepend("\n#{date} || || #{value} || #{balance}")
  end

  DEFAULT_BALANCE = 0

  private

  def date
    return Time.now.strftime("%d/%m/%Y")
  end

  def currency_format(amount)
    sprintf("%.2f", amount)
  end

end
