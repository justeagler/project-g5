class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def list
      @teams = Team.find(:all)
  end

  def create
    @team = Team.new team_params

    if @team.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
      @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
    @subjects = Subject.find(:all)
  end

  private

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(params[:team])
     redirect_to :action => 'show', :id => @team
   else
     @subjects = Subject.find(:all)
     render :action => 'edit'
   end
 end

def delete
  Team.find(params[:id]).destroy
  /redirect_to :action => 'list'/
end

def show_subjects
      @subject = Subject.find(params[:id])
   end

 def team_params
  params.require(:team)
  .permit(:name)
  .merge(user: current_user)
end
end
