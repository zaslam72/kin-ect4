class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @game = Game.find(params[:game_id])
    @subscription = Subscription.create(user_id: current_user.id, game_id: params[:game_id])
    redirect_to root_path
  end
end
