class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @game = Game.find(params[:id])
    @comment = Comment.new
  end

  def create
    @subscription = Subscrip
    current_user.games <<
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
