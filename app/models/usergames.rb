class Usergames < ActiveRecord::Base
	attr_accessible :user_id, :game_id, :profile_id, :profile_name, :wins, :losses, :total_games, :rank, :level


	has_many :users
	has_many :games
end