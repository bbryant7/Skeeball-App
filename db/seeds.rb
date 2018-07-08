
matt = Player.where(first_name: "Matt", last_name: "Rice", nickname: "Coldsnacky", email: "matt@example.com").first_or_create
justin = Player.where(first_name: "Justin", last_name: "Herrick", nickname: "J-Money", email: "justin@example.com").first_or_create
bailey = Player.where(first_name: "Bailey", last_name: "Bryant", nickname: "Bzilla", email: "bailey@example.com").first_or_create
kyli = Player.where(first_name: "Kyli", last_name: "Linneman", nickname: "Ky-Ky Butterfly", email: "kyli@example.com").first_or_create
brandi = Player.where(first_name: "Brandi", last_name: "Alexander", nickname: "Bee", email: "brandi@example.com").first_or_create
danielle = Player.where(first_name: "Danielle", last_name: "Casper", nickname: "Dirty D", email: "danielle@example.com").first_or_create
lucas = Player.where(first_name: "Lucas", last_name: "Beran", nickname: "Cool Man Luke", email: "lucas@example.com").first_or_create
melanie = Player.where(first_name: "Melanie", last_name: "McGuire", nickname: "Drelanie", email: "melanie@example.com").first_or_create
andrew = Player.where(first_name: "Andrew", last_name: "Murray", nickname: "Cowboy Andy", email: "andy@example.com").first_or_create

# Player.all.each_with_index do |player, i|
#   is_captain = false
#   is_captain = true if i == 0
#   PlayerTeam.where(team_id: team.id, player_id: player.id, order: i + 1, captain: is_captain).first_or_create
# end

teams = ["Purple Team", "Rainbow Ponies", "Teen Titans", "Grumpy Old Men", "Skeeball Genies", "L 7 Weenies", "Don't Stop skeeballievin", "DSM"]
teams.each do |name|
  Team.where(
    name: name,
    wins_count: 0,
    losses_count: 0,
    active:true
  ).first_or_create
end

rainbow_team = Team.find_by(name: "Rainbow Ponies")
dont_stop = Team.find_by(name: "Don't Stop skeeballievin")
team = Team.where(name: "Montuckskee Coldsnacks", wins_count: 0, losses_count: 0, active: true).first_or_create


PlayerTeam.where(team_id: team.id, player_id: justin.id, order: 1, captain: false).first_or_create
PlayerTeam.where(team_id: team.id, player_id: matt.id, order: 2, captain: true).first_or_create
PlayerTeam.where(team_id: team.id, player_id: bailey.id, order: 3, captain: false).first_or_create
PlayerTeam.where(team_id: rainbow_team.id, player_id: bailey.id, order: 1, captain: false).first_or_create
PlayerTeam.where(team_id: rainbow_team.id, player_id: kyli.id, order: 2, captain: true).first_or_create
PlayerTeam.where(team_id: rainbow_team.id, player_id: brandi.id, order: 3, captain: false).first_or_create
PlayerTeam.where(team_id: rainbow_team.id, player_id: danielle.id, order: 4, captain: false).first_or_create
PlayerTeam.where(team_id: dont_stop.id, player_id: lucas.id, order: 1, captain: true).first_or_create
PlayerTeam.where(team_id: dont_stop.id, player_id: melanie.id, order: 2, captain: false).first_or_create
PlayerTeam.where(team_id: dont_stop.id, player_id: andrew.id, order: 3, captain: false).first_or_create
PlayerTeam.where(team_id: dont_stop.id, player_id: danielle.id, order: 4, captain: false).first_or_create
