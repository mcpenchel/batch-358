require_relative "team_repository"
require_relative "player_repository"

team_repo = TeamRepository.new("teams.csv")
player_repo = PlayerRepository.new("players.csv", team_repo)

player_repo.players.each do |player|
  p "[#{player.position}] #{player.name}, number #{player.number}, plays at #{player.team.name}"
end
