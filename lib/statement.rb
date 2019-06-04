
class Statement

  def initialize
    @statement = ""
  end

  def print(transactions)
    transactions.each do |transaction|
      statement_formatting(transaction)
    end
    @statement.prepend(HEADER)
    @statement
  end

  private

  HEADER = "date || credit || debit || balance"

  def statement_formatting(transaction)
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
