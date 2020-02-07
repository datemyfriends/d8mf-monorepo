class FriendshipController < ApplicationController
    include Response
    # GET /users
    def index
      @friends = User.find(params[:user_id]).friends
      json_response(@friends)
    end
  
end
