class SurveyController < ApplicationController
	@@counter = 0;
  def index
  	@locations = Location.all
  	@languages = Language.all

  end

  def create
  	@@counter +=1
  	@times_counter = @@counter
  	session[:name] = params[:name]
  	session[:location] = params[:location]
  	session[:language] = params[:language]
  	session[:comment] = params[:comment]
  	flash[:success] = "Thanks for submitting this form! You have submitted this form #{@times_counter} times now!"
	  	# @user = User.create( survey_params)
	  	puts "this is where my name info should be"
	  	redirect_to '/survey/show'


  end

  def show
  	@current_user = session[:name]
  	@location = session[:location]
  	@language = session[:language]
  	@comment = session[:comment]


  end

  private 
  # def survey_params 
  # 	params.require(:user).permit(:name, :location, :language, :comment)
  # end
end
