class VotesController < ApplicationController
  def index
  end

  def new
    @voate = Vote.new
  end

  def create
    @user = User.find(params[:user_id])
    @vote = Vote.create(user_id: params[:user_id], votable_id: params[:votable_id], votable_type: params[:votable_type])
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
