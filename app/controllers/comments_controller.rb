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
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(body: params[:comment][:body])
    redirect_to(game_path(@comment.game_id))
  end

  def destroy
    @comment = Comment.find(params[:id])
    @game_id = @comment.game_id
    @comment.destroy
    redirect_to(game_path(@game_id))
  end

  def upvote
    @comment = Comment.find(params[:id])
    @comment.votes.create(user_id: current_user.id, upvote: true)
    redirect_to(game_path(@comment.game_id))
  end
end
