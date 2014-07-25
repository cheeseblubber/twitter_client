class Api::FollowsController < ApplicationController
  def mutual_follows
    username_one = params[:username_one]
    username_two = params[:username_two]
    mutual_follows = User.find_mutual_follows(username_one, username_two)

    render json: mutual_follows.to_json
  end
end
