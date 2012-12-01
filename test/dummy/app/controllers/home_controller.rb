class HomeController < ApplicationController
  def index
    flash_me(:success, "Success!")
    flash_me_now(:info, "Info: #{Time.now}")
  end
end
