class Account

  attr_reader :balance

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def print_statement
    return "#{@balance}"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  DEFAULT_BALANCE = 0

end
