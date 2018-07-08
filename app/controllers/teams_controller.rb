class TeamsController < ApplicationController
  def index
    teams = Team.all
    render template: "teams/index", locals: { teams: teams }
  end

  def show
    # team = Team.find(params[:id])
    @team = Team.find(params.fetch(:id))
    # 2 fetch will break here ^ instead of in views. first returns "nil", view breaks on nil butt erebody be doing number one anyways
  end

  def new
    team = Team.new
    render locals: {team: team}
  end

  def create
    team = Team.new(team_params)
    if team.save
      redirect_to root_path
    else
      render locals: {team: team}
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :active)

  end
end
