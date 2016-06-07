class BankAccount
	attr_accessor  :checking_balance, :savings_balance, :first_name, :last_name, :account_number
	@account_counter = 0

	#had to look at coding dojo code for this, did not know how to create a private counter
	class << self
		attr_accessor :account_counter
	end

	def initialize(first_name, last_name, checking_desposit, savings_deposit)
		@first_name = first_name
		@last_name = last_name
		@checking_balance = checking_desposit
		@savings_balance = savings_deposit
		@interest_rate = 0.05
		self.class.account_counter +=1
		puts "Thank you for opening a bank account with us!"

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
				puts "I'm sorry you only have $#{@savings_balance} left in your account and you tried to withdraw #{val}, please withdraw less"
			end

		else
			if val < @checking_balance
				@checking_balance -= val

			else
				puts "I'm sorry you only have $#{@checking_balance} left in your account and you tried to withdraw #{val}, please withdraw less"
			end
		end

		self
	end

	def checkingBalance
		puts "Checking Balance: #{@checking_balance}"
		self
	end

	def savingsBalance
		puts "Savings Balance: #{@savings_balance}"
		self
	end

	def totalMoney
		puts "Checking Balance: #{@checking_balance + (@checking_balance * @interest_rate)}"
		puts "Savings Balance: #{@savings_balance + (@savings_balance * @interest_rate)}"
		puts "Total Balance: #{(@checking_balance + @savings_balance +(@savings_balance + @checking_balance * @interest_rate))}"
		
		self
	end

	def accountInformation 
		puts "Account Number: #{@account_number}"
		puts "Checking Balance: #{@checking_balance + (@checking_balance * @interest_rate)}"
		puts "Savings Balance: #{@savings_balance + (@savings_balance * @interest_rate)}"
		puts "Total Balance: #{(@checking_balance + @savings_balance +(@savings_balance + @checking_balance * @interest_rate))}"
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

customer1 = BankAccount.new("Nicole", "Peoples", 40, 80)
customer1.withdrawal(30, "savings")
customer1.withdrawal(20, "checking")
# customer1.checkingWithdrawal(30).accountInformation
customer1.accountInformation
customer2 = BankAccount.new("Cassi", "Gallagher", 30, 150)
customer2.accountInformation
customer2.numAccounts