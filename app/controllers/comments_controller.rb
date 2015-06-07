class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def index
    @comments = Comment.all
  end
  def create
    @team = Team.find(params[:team_id])
    @comment = @team.comments.create(comment_params)
    redirect_to team_path(@team)


    /@comment = Comment.new comment_params
    
    if @comment.save
      redirect_to root_path
    else
      render :new
    end/
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to :action => 'show', :id => @comment
  end

  def destroy
    @comment=Comment.find(params[:id])
    @comment.destroy
    redirect_to :action => 'index'
  end

  private

  def comment_params
    params.require(:comment)
    .permit(:username,:title,:body)
  end
end
