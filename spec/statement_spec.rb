describe 'Statement' do

  describe 'print' do

    before(:each) do
      @transaction1 = instance_double('transaction', :date => '03/05/2018', :amount => '40.00', :balance => '100', :type => 'credit')
      @transaction2 = instance_double('transaction', :date => '22/05/2018', :amount => '20.00', :balance => '80', :type => 'debit')
      @transactions = [@transaction1, @transaction2]
    end

    it "returns a string of transactions" do
      statement = Statement.new
      expect(statement.format(@transactions)).to eq "date || credit || debit || balance\n22/05/2018 || || 20.00 || 80\n03/05/2018 || 40.00 || || 100"
    end
  end

end
