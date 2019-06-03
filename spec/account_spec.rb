# as a bank manager
# so that we can keep our books straight
# i would like accounts to start with an opening balance of 0


describe 'Account' do

  let(:default_balance) { Account::DEFAULT_BALANCE }

  describe 'balance' do
    it 'starts with a default balance' do
      account = Account.new
      expect(account.balance).to eq default_balance
    end
  end
  
end
