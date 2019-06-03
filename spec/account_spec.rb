# as a bank manager
# so that we can keep our books straight
# i would like accounts to start with an opening balance of 0

describe 'Account' do

  let(:default_balance) { Account::DEFAULT_BALANCE }
  let(:new_account) { Account.new }

  describe 'balance' do
    it 'starts with the given default balance' do
      expect(new_account.balance).to eq default_balance
    end
  end

# as a bank user
# so that i can see how much money is in my account
# I would like to be able to print a statement that shows my balance

  describe 'print_statement' do
    it 'prints the current balance' do
      expect(new_account.print_statement).to eq "0"
    end
  end

# as a bank user
# so that i can store money
# i would like to be able to make deposits into my account

  describe 'deposit' do
    it 'adds the given amount to the account balance' do
      new_account.deposit(99)
      expect(new_account.balance).to eq(default_balance + 99)
    end
  end

end
