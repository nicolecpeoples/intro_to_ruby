require_relative 'banking'

RSpec.describe BankAccount do
	describe 'behavior' do 
    before do
      @bank = BankAccount.new
    end

		it 'has a method for retrieving the checking account balance' do

			expect(@bank.checkingBalance).to eq("Checking Balance: 2000")
		end

		it 'has a method for retrieving the savings account balance' do

			expect(@bank.savingsBalance).to eq("Savings Balance: 5000")
		end

		it 'has a method that retrieves the total account balance' do

			expect(@bank.displayTotalBalance).to eq(7350.0)
		end

		it 'has a method that allows the user to withdraw cash' do

			expect(@bank.withdrawal(20, "savings")).to eq(4980)
			expect(@bank.withdrawal(20, "checking")).to eq(1980)
		end

		it 'raises an error if a user tries to withdraw more money than they have in the account' do

			expect(@bank.withdrawal(5500, "savings")).to eq("Sorry your don't have enough money to withdraw in this account")
			expect(@bank.withdrawal(2500, "checking")).to eq("Sorry your don't have enough money to withdraw in this account")
		end

		it 'raises an error when the user tries to print out how many bank accounts there are' do
			expect{@bank.account_counter}.to raise_error(NoMethodError)
		end

		it 'raises an error when the user tries to set the interest rate' do
			expect{@bank.interest_rate(0.02)}.to raise_error(NoMethodError)
		end
	end

	describe 'attributes' do
	    before do
	      @bank = BankAccount.new
	    end

		it 'Raises an error when the user tries to set any attribute' do
	      expect{@bank.account_counter(5)}.to raise_error(NoMethodError)
	      expect{@bank.account_number(123)}.to raise_error(ArgumentError)
	      expect{@bank.checking_balance(2000000)}.to raise_error(ArgumentError)
	      expect{@bank.savings_balance(2000000)}.to raise_error(ArgumentError)
	      expect{@bank.interest_rate(0.02)}.to raise_error(NoMethodError)
    	end
	end
end
