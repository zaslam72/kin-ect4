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
end
