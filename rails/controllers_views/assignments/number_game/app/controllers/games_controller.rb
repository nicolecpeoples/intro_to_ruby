class GamesController < ApplicationController

  def index
  	if !session[:random_num] 
  		session[:random_num] = rand(0 .. 100)
  	end
  	if !session[:count]
  		session[:count] = 5
  	end
  	
  	if session[:count] > 1
	  	if request.post?
	  		session[:count] = session[:count] - 1 
	  		@guess = params[:guess].to_i
	  		if @guess == session[:random_num]

	  			flash[:success] = "#{session[:random_num]} was the number! <a href='#{'/games/play_again'}'>Play Again!</a>".html_safe
	  			
	  		elsif @guess > session[:random_num]
	  			flash[:notice] = "Sorry your guess was too high!"
	  			
	  		else
	  			flash[:notice] = "Sorry your guess was too low!"
				
	  		end
	  	end
	  else
	 	flash[:notice] = "Sorry you've already guessed 5 times. The correct answer was #{session[:random_num]} <br/> <a href='#{'/games/play_again'}' class='play_again'>Play Again!</a>".html_safe
	 	
	  end

	 
	 end

  def play_again
  	session.destroy
  	redirect_to '/'
  end
end
