class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def index
    @players = Player.all
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
  end

  def update
    @player = Player.find(params[:id])
    @player.update(player_params)
    redirect_to :action => 'show', :id => @player
  end

  def destroy
    @player=Player.find(params[:id])
    @player.destroy
    redirect_to :action => 'index'
  end

  private

  def player_params
    params.require(:player)
    .permit(:name,:position,:number,:birthday)
    .merge(team_id: current_user.team.id)
  end
end
