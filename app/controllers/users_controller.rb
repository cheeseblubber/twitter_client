class UsersController < ApplicationController
  def show
    User.fetch_recent_tweets
  end

  private

  def user_params
    params.require(:user).permit(:name, :url)
  end
end
