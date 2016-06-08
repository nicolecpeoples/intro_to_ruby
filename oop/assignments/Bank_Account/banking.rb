class BankAccount
	attr_accessor  :checking_balance, :savings_balance, :first_name, :last_name, :account_number
	@account_counter = 0

	#had to look at coding dojo code for this, did not know how to create a private counter
	class << self
		attr_accessor :account_counter
	end

	def initialize
		@checking_balance = 2000
		@savings_balance = 5000
		@interest_rate = 0.05
		self.class.account_counter +=1
		
	end 

	def displayAccountNumber
		puts @account_number
	end

	def deposit(val, account)
		if account == "savings"
			puts "savings deposit"
			@savings_balance += val
		else
			puts "checking deposit"
			@checking_balance += val
		end
	end


	def withdrawal(val, account)
		if account == "savings"
			if val < @savings_balance
				@savings_balance -= val
			else
				return "Sorry your don't have enough money to withdraw in this account"
			end

		else
			if val < @checking_balance
				@checking_balance -= val

			else
				return "Sorry your don't have enough money to withdraw in this account"
			end
		end

	end

	def checkingBalance
		return "Checking Balance: #{@checking_balance}"
		
	end

	def savingsBalance
		return "Savings Balance: #{@savings_balance}"
		
	end

	def displayTotalBalance
		puts "Total Balance: #{((@checking_balance + @savings_balance) * @interest_rate) + (@checking_balance + @savings_balance) }"
		(@checking_balance + @savings_balance) + ((@checking_balance+@savings_balance)) * @interest_rate
		
		
	end

	def accountInformation 
		puts "Account Number: #{@account_number}"
		puts "Checking Balance: #{@checking_balance + (@checking_balance * @interest_rate)}"
		puts "Savings Balance: #{@savings_balance + (@savings_balance * @interest_rate)}"
		puts "Total Balance: #{(@checking_balance + @savings_balance) * @interest_rate}"
		puts "Current Interest: #{@interest_rate}%"
		self
	end

	def numAccounts
		puts "#{self.class.account_counter}"
	end

	private

	def createAccountNumber
		@account_number = Integer(rand.to_s[1..5])
	end

end

# customer1 = BankAccount.new("Nicole", "Peoples", 40, 80)
# customer1.withdrawal(30, "savings")
# customer1.withdrawal(20, "checking")
# # customer1.checkingWithdrawal(30).accountInformation
# customer1.accountInformation
# customer2 = BankAccount.new("Cassi", "Gallagher", 30, 150)
# customer2.accountInformation
# customer2.numAccounts