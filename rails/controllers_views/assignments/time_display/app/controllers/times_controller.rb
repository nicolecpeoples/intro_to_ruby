class TimesController < ApplicationController
  def main
  	@t = Time.now
  	@time = @t.strftime("%I:%M %p")
  	@date = @t.strftime("%B %d, %Y")
  end
end