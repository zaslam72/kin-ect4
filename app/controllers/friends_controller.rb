class FriendsController < ApplicationController

  def show
  	@friend = User.find(params[:id])
  	@games = @friend.games
  end 

end
