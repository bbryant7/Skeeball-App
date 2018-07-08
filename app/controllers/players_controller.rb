class PlayersController < ApplicationController

  def show
    player = Player.find(params.fetch(:id))
    render locals: { player: player }
  end

  def new
    player = Player.new
    team = Team.find(params.fetch(:team_id))
    player_team = PlayerTeam.new
    render locals: { player: player, team: team, player_team: player_team }
  end

  def create
    player = Player.new(player_params)
    if player.save
      redirect_to player
    else
      render locals: { player: player }
    end
  end

  # # TODO:
  def edit

  end

  def update

  end

  def delete

  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :nickname, :email, :player_teams_attributes =>[:team_id, :order, :captain])
  end

end
