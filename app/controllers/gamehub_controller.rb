class GamehubController < ApplicationController

	def index
		@user = current_user

		league_data = Unirest::get("https://teemojson.p.mashape.com/player/na/Ph03n1xZ/recent_games", 
  			{
    			"X-Mashape-Authorization" => "MsFPP5vOhFqyY63bPvzZk1FsvbQui5MX"
 			}
		) 
		@response = league_data.body["data"]["gameStatistics"]["array"]




		# to get ranked game = league_data.body["data"]["gameStatistics"]["array"][game]["ranked"]
		# to get time of game = league_data.body["data"]["gameStatistics"]["array"][9]["createDate"]

	end


end