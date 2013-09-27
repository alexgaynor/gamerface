class Game < ActiveRecord::Base
	attr_accessible :title, :genre, :developer, :console, :release_date, :game_url, :status_url

	has_and_belongs_to_many :usergames
	has_many :users, :through => :usergames

end