class HomeController < ApplicationController
  def signup
    @user = User.new
  end
   
  def index
    logged_in_user
    @user = current_user
  end

  def edit
    logged_in_user
    if current_user
        @profile = current_user.profile
    end
  end

end
