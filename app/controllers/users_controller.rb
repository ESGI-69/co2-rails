class UsersController < ApplicationController
  # before_action :require_login
  def index
    #@users = User.all

    @loggedIn = signed_in?

    if @loggedIn === true
      @journeys = Journey.where(user_id: current_user.id)
      @formUrl = "/users?id="
    end
    
  end

  def delete
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_to users_path
  end
end
