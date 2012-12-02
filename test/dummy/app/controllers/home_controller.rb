class HomeController < ApplicationController
  def index
    flash_me(:success, "Success!")
    flash_me_now(:info, "Info: #{Time.now}")
    flash_me_now(:warning,  "<strong>unsafe test</strong>")
    flash_me_now(:warning,  "<script>alert('wtf');</script>not safe")
    flash_me_now(:error,  "<script>alert('wtf');</script>not safe")
  end
end
