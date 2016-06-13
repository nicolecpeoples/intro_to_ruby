class RpgController < ApplicationController
  @@activities = []

  def index

    if !session[:gold]
      session[:gold] = 0
    end
    
    @activities = @@activities
    
  end

  def farm
    @rand = rand(10..20)
    session[:gold] += @rand
    @@activities.prepend("activity":"Earned #{@rand} golds from the farm! at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}", "color":"green")
    redirect_to '/'

  end

  def cave
    @rand = rand(5 .. 10)
    session[:gold] += @rand
    @@activities.prepend("activity":"Earned #{@rand} golds from the cave! at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}", "color":"green")
    redirect_to '/'
  end

  def house
    @rand = rand(2 .. 5)
    session[:gold] += @rand
    @@activities.prepend("activity":"Earned #{@rand} golds from the house! at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}", "color":"green")
    redirect_to '/'
  end

  def casino
    @rand = rand(-50 .. 50)
    session[:gold] += @rand
    if @rand > 0
      @@activities.prepend("activity":"Earned #{@rand} golds from the casino! at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}", "color":"green")
    else
      @@activities.prepend("activity":"You lost #{@rand} golds from the casino at #{Time.now.strftime("%b %d, %Y  %I:%M:%S %p")}", "color":"red")
    end
    redirect_to '/'
  end

  def reset
    session.destroy
    redirect_to '/'
  end
end
