describe 'Account' do

  let(:default_balance) { Account::DEFAULT_BALANCE }
  let(:account) { Account.new }

  describe 'balance' do
    it 'starts with the given default balance' do
      expect(account.balance).to eq default_balance
    end
  end

  describe 'statement' do
    it 'starts as an empty string' do
      expect(account.statement).to eq ""
    end
  end

  describe 'print_statement' do
    it 'prepends the statement with a header and prints it' do
      expect(account.print_statement).to eq "date || credit || debit || balance"
    end
  end

  describe 'deposit' do
    it 'adds the given amount to the account balance and prepends the statement' do
      allow(Time).to receive(:now).and_return(Time.parse('01/04/2001'))
      account.deposit(99)
      expect(account.balance).to eq(default_balance + 99)
      expect(account.print_statement).to eq "date || credit || debit || balance\n01/04/2001 || 99 || || 99"
    end
  end

  describe 'withdraw' do
    it 'removes the given amount from the account balance and prepends the statement' do
      allow(Time).to receive(:now).and_return(Time.parse('02/05/2002'))
      account.withdraw(43)
      expect(account.balance).to eq(-43)
      expect(account.print_statement).to eq "date || credit || debit || balance\n02/05/2002 || || 43 || -43"
    end
  end

end
