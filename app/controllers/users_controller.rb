class UsersController < ApplicationController
  def index
    #@users = User.all
    # get all journeys for current user
    @journeys = Journey.where(user_id: current_user.id)

    @formUrl = "/users?id="
    
  end

  def delete
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_to users_path
  end
end
