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
