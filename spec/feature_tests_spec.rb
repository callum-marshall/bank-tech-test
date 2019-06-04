require 'account'

describe 'Feature Tests' do

  let(:account) { Account.new }

  context 'creating a new account' do
    it 'a customer can create a new account' do
      expect(account).to be_a Account
    end
  end

  context 'making a deposit' do
    it 'customers can make a deposit' do
      expect(account.deposit(50)).to eq "You deposited 50"
    end
  end

  context 'making a withdrawal' do
    it 'customers can make a withdrawal and see it reflected in their statement' do
      expect(account.withdraw(20)).to eq "You withdrew 20"
    end
  end

  context 'printing a statement' do
    it 'customers can see the date of their deposits and withdrawals on their statement' do
      allow(Time).to receive(:now).and_return(Time.parse('10/01/2012'))
      account.deposit(1000)

      allow(Time).to receive(:now).and_return(Time.parse('11/01/2012'))
      account.withdraw(500)
      expect { account.puts_statement }.to output("date || credit || debit || balance\n11/01/2012 || || 500.00 || 500.00\n10/01/2012 || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end
