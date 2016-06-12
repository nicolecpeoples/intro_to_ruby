require_relative 'bankaccount'

RSpec.describe BankAccount  do 
	before do 
		@acc = BankAccount.new
	end

	it "has only a getter for savings and checking attributes" do 
		#expect(@acc.savings).to eq(0.00)
		expect(@acc.savings).to be_kind_of Numeric

		#can read savings / checking

		#cannot write savings/ checking 
	end

	it "has an 'account information' for reading private attributes" do 

	end

	it "has a 'deposit' and 'witdraw' method for altering accounts" do 
		@acc.deposit(:savings, 3000)
		expect(@acc.savings).to eq(3000)
		expect{ @acc.withdraw(:backup, 2000)}.to raise_error(ArgumentError)
	end


end