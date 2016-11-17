class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @game = Game.find(params[:id])
    @comment = Comment.new
  end

  def create
    @game = Game.find(params[:game_id])
    @comment = @game.comments.new(body: params[:comment][:body], user_id: current_user.id)
    if @comment.save
      redirect_to game_path(@game)
    else
      @errors = @comment.errors.full_messages
      render "games/show"
    end
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
