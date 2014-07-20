class UsersController < ApplicationController
  def show
    tweets = User.recent_tweets(params[:id])
    render json: tweets.to_json
  end

  private

  def user_params
    params.require(:user).permit(:name, :url)
  end
end
