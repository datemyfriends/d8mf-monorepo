class FriendshipController < ApplicationController
    include Response
    # GET /users
    def index
      @friends = User.find(params[:id]).friends
      json_response(@friends)
    end
  
end
