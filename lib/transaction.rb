
class Transaction

  def initialize(type, amount, balance, time = Time.now)
    @type = type
    @amount = currency_format(amount)
    @balance = currency_format(balance)
    @date = date_format(time)
  end

  attr_reader :amount, :balance, :date, :type

  private

  def date_format(time)
    time.strftime("%d/%m/%Y")
  end

  def currency_format(amount)
    sprintf("%.2f", amount)
  end

end
