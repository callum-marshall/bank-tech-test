require 'account'

describe 'Feature Tests' do

  let(:account) { Account.new }

# as a bank manager
# so that we can keep our books straight
# i would like accounts to start with an opening balance of 0

  context 'creating a new account' do
    it 'a customer can create a new account' do
      expect(account).to be_a Account
    end
  end

# as a bank user
# so that i can store money
# i would like to be able to make deposits into my account

  context 'making a deposit' do
    it 'customers can make a deposit and see it reflected in their statement' do
      account.deposit(50)
      expect(account.print_statement).to include "50"
    end
  end

# as a bank user
# so that i can spend my money
# i would like to be able to make withdrawals out of my account

  context 'making a withdrawal' do
    it 'customers can make a withdrawal and see it reflected in their statement' do
      account.deposit(50)
      account.withdraw(20)
      expect(account.print_statement).to include "30"
    end
  end

# as a bank user
# so that i know which days i made withdrawals and deposits
# i would like to be able to print a statement that shows the date on which those activities occurred

  context 'printing a statement' do
    it 'customers can see the date of their deposits and withdrawals on their statement' do
      allow(Time).to receive(:now).and_return(Time.parse('10/01/2012'))
      account.deposit(1000)

      allow(Time).to receive(:now).and_return(Time.parse('11/01/2012'))
      account.withdraw(500)
      expect(account.print_statement).to eq "date || credit || debit || balance\n11/01/2012 || || 500 || 500\n10/01/2012 || 1000 || || 1000"
    end
  end
end
