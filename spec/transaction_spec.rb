describe 'Transaction' do

  describe 'transaction attributes' do

    before(:each) do
      allow(Time).to receive(:now).and_return(Time.parse('03/09/2005'))
      @transaction = Transaction.new('credit', 50, 100, Time.now)
    end

    it 'stores the given type as a correctly formatted accessible attribute' do
      expect(@transaction.type).to eq 'credit'
    end

    it 'stores the given amount as a correctly formatted accessible attribute' do
      expect(@transaction.amount).to eq '50.00'
    end

    it 'stores the given balance as a correctly formatted accessible attribute' do
      expect(@transaction.balance).to eq '100.00'
    end

    it 'stores the given date as a correctly formatted accessible attribute' do
      expect(@transaction.date).to eq '03/09/2005'
    end
  end

end
