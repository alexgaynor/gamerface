# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.create(title: 'Starcraft 2', genre: 'Real-Time Strategy', developer: 'Blizzard', console: 'Computer', game_url: 'http://us.battle.net/sc2/en/', status_url: 'http://www.teamliquid.net/forum/viewmessage.php?topic_id=138846')

Game.create(title: 'League of Legends', genre: 'Massive Online Battle Arena', developer: 'Riot', console: 'Computer', game_url: 'http://beta.na.leagueoflegends.com', status_url: 'http://forums.na.leagueoflegends.com/board/forumdisplay.php?f=20')