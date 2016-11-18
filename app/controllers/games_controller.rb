class GamesController < ApplicationController

  def index
    @categories = Category.all
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def search
    @categories = Category.all
    @games = Game.where(category_id: params[:category_id])
    render :index
  end

  def new
    @game = Game.new
  end

  def create
    @subscription = Subscription.create(user_id: current_user.id, game_id: params[:id])
    redirect_to game_path
  end
end
