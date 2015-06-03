class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def index
      @player = Player.find(:all)
  end

  def create
    @player = Player.new player_params

    if @player.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
      @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
    @subjects = Subject.find(:all)
  end

  private

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(params[:player])
     redirect_to :action => 'show', :id => @player
   else
     @subjects = Subject.find(:all)
     render :action => 'edit'
   end
 end

def delete
  Player.find(params[:id]).destroy
  /redirect_to :action => 'list'/
end

def show_subjects
      @subject = Subject.find(params[:id])
   end

 def player_params
  params.require(:player)
  .permit(:name)
  .merge(user: current_user)
end
end
