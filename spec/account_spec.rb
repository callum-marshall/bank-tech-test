describe 'Account' do

  let(:default_balance) { Account::DEFAULT_BALANCE }
  let(:account) { Account.new }

  describe 'balance' do
    it 'starts with the given default balance' do
      expect(account.balance).to eq default_balance
    end
  end

  describe 'statement_format' do
    it 'returns the formatted string' do
      expect(account.statement_format).to eq "date || credit || debit || balance"
    end
  end

  describe 'puts_statement' do
    it "puts's the formatted statement string" do
      expect { account.puts_statement }.to output("date || credit || debit || balance\n").to_stdout
    end
  end

  describe 'deposit' do
    it 'adds the given amount to the account balance and prints confirmation' do
      allow(Time).to receive(:now).and_return(Time.parse('01/04/2001'))

      expect(account.deposit(99)).to eq "You deposited 99"
      expect(account.balance).to eq(default_balance + 99)
    end
  end

  describe 'withdraw' do
    it 'removes the given amount from the account balance and prints confirmation' do
      allow(Time).to receive(:now).and_return(Time.parse('02/05/2002'))

      expect(account.withdraw(43)).to eq "You withdrew 43"
      expect(account.balance).to eq(-43)
    end
  end

end
