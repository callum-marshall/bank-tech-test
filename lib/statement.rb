
class Statement

  def initialize
    @statement = ""
  end

  def format(transactions)
    transactions.each do |transaction|
      line_format(transaction)
    end
    @statement.prepend(HEADER)
    @statement
  end

  private

  HEADER = "date || credit || debit || balance"

  def line_format(transaction)
    if transaction.type == "credit"
      @statement.prepend(credit_format(transaction))
    elsif transaction.type == "debit"
      @statement.prepend(debit_format(transaction))
    end
  end

  def credit_format(transaction)
    "\n#{transaction.date} || #{transaction.amount} || || #{transaction.balance}"
  end

  def debit_format(transaction)
    "\n#{transaction.date} || || #{transaction.amount} || #{transaction.balance}"
  end

end
