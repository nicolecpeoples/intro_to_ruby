class RpgController < ApplicationController

  def index

    if !session[:gold]
      session[:gold] = 0
    end
    if session[:activities] == nil
      session[:activities] = []
    end
    
    @activities = session[:activities]

  end

  def farm
    @rand = rand(10..20)
    session[:gold] += @rand
    session[:activities] << "Earned #{@rand} golds from the farm! at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}"
    @activities = session[:activities]
    redirect_to '/'

  end

  def cave
    @rand = rand(5 .. 10)
    session[:gold] += @rand
    session[:activities] << "Earned #{@rand} golds from the cave! at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}"    
    @activities = session[:activities]
    redirect_to '/'
  end

  def house
    @rand = rand(2 .. 5)
    session[:gold] += @rand
    session[:activities] << "Earned #{@rand} golds from the house! at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}"
    @activities = session[:activities]
    redirect_to '/'
  end

  def casino
    @rand = rand(-50 .. 50)
    session[:gold] += @rand
    if @rand > 0
      session[:activities] << "Earned #{@rand} golds from the casino! at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}"
    else
      session[:activities] << "You lost #{@rand} golds from the casino at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}"
    end
    @activities = session[:activities]
    redirect_to '/'
  end

  def reset
    session.destroy
    redirect_to '/'
  end
end
