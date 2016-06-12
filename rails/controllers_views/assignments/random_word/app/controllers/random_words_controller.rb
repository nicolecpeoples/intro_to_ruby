class RandomWordsController < ApplicationController
  
  def index
  	if	!session[:counter]
  		session[:counter] = 0
  	end
  	if !session[:rand_word]
  		session[:rand_word] = "Click Generate to get a new word"
  	end

  	if request.post?
	  	session[:counter] = session[:counter ]+1
	  	letter_array = ("a" .. "z").to_a + ("A" .. "Z").to_a
	  	@random_word =[]
	  	13.times do
	  		#generate random number
	  		@rand_num = rand(0 .. 51)
	  		
	  		# puts @rand_num
	  		# puts letter_array[@rand_num]
	  		#find corresponding letter in letters array
	  		@random_word.push(letter_array[@rand_num].to_s)
	  		
	  	end
	  	
	  	session[:rand_word] = @random_word.join('')
	  	# @letters = (a..z).map{ |i| i.to_s z}
	  	redirect_to '/'
  	end
  end

  def reset
  	session.destroy
  	redirect_to '/'
  end
end
