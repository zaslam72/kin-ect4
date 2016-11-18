class GamesController < ApplicationController
  before_action :authorize, except: [:index]

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

  def upvote
    @game = Game.find(params[:id])
    @game.votes.create(user_id: current_user.id, upvote: true)
    redirect_to(games_path)
  end
end
