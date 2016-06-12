class SurveyController < ApplicationController

  def index
  	@locations = Location.all
 	@languages = Language.all
  	if !session[:counter]
  		session[:counter] = 0
  	end
  end

  def create
  	session[:counter] = session[:counter ] +1
  	session[:result] = params[:survey]

  	flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:counter]} times now!"
	  	# @user = User.create( survey_params)
	  	puts "this is where my name info should be"
	  	redirect_to '/survey/show'


  end

  def show
  	@success_message = flash[:success]
  	@result = session[:result]

  end

  private 
  # def survey_params 
  # 	params.require(:user).permit(:name, :location, :language, :comment)
  # end
end
