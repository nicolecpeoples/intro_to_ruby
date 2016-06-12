class BankAccount
	attr_reader :savings, :checking, :account_number

	def initialize
		@savings = 0.00
		@checking = 0.00
		@interest_rate = .15
		@number_of_accounts = 2
		@account_number = make_random_number
	end

	def deposit acc, amt

	end

	def withdraw acc, amt
		if acc == :savings
			if @savings < amt
				raise "not enough money"
				#todo
				#raise error explaining mistake
			end
			@savings -=amt
		
		elsif acc == :checking
			if @checking < amt
				raise "not enough money"
			end
			@checking -= amt
			
		else
			raise ArgumentError "this is not an account option"
		end

	end

	def savings = blah

	end

	private

	def make_random_number
		num = ""
		10.times { num << rand(10).to_s}
	end

end