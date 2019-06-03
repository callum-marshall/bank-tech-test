class Account

  attr_reader :balance

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def print_statement
    return "#{date} #{@balance}"
  end

  def date
    return Time.now.strftime("%d/%m/%y")
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  DEFAULT_BALANCE = 0

end
