require 'account'

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
