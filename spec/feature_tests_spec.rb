require 'account'

describe 'Feature Tests' do

# as a bank manager
# so that we can keep our books straight
# i would like accounts to start with an opening balance of 0

  context 'creating a new account' do
    it 'a customer can create a new account' do
      account = Account.new
      expect(account).to be_a Account
    end
  end

# as a bank user
# so that i can see how much money is in my account
# I would like to be able to print a statement that shows my balance

  context 'checking the account balance' do
    it 'customers can print a statement that includes their balance' do
      account = Account.new
      expect(account.print_statement).to include "0"
    end
  end

# as a bank user
# so that i can store money
# i would like to be able to make deposits into my account

  context 'making a deposit' do
    it 'customers can make a deposit and see it reflected in their statement' do
      account = Account.new
      account.deposit(50)
      expect(account.print_statement).to include "50"
    end
  end

# as a bank user
# so that i can spend my money
# i would like to be able to make withdrawals out of my account

  context 'making a withdrawal' do
    it 'customers can make a withdrawal and see it reflected in their statement' do
      account = Account.new
      account.deposit(50)
      account.withdraw(20)
      expect(account.print_statement).to include "30"
    end
  end

end
