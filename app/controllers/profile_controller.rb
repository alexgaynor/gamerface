class ProfileController < ApplicationController

	def index
		@user = current_user
		@games = Usergames.find(:all, :conditions => { :user_id => current_user.id })
	end

	def addgame
		@user = current_user
		@game = Game.new
		@usergames = Usergames.new
		games = Game.all
		@games_arr = []
		games.each do |g|
			@games_arr << ["#{g.title}", g.id]
		end
	end

	def creategame
		usergame = Usergames.new(params[:usergames])
		usergame.user_id = current_user.id
		if usergame.game_id == 2
			game_data = Unirest::get("https://teemojson.p.mashape.com/player/na/#{usergame.profile_name}", 
  				{
   					"X-Mashape-Authorization" => "MsFPP5vOhFqyY63bPvzZk1FsvbQui5MX"
  				}
			)
			usergame.profile_id = game_data.body["data"]["summonerId"]
			usergame.level = game_data.body["data"]["level"]
		end


		usergame.save
		redirect_to '/profile'
	end

end