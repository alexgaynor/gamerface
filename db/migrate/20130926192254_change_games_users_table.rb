class ChangeGamesUsersTable < ActiveRecord::Migration
  def up
  	rename_table :games_users, :usergames
  end

  def down
  	rename_table :usergames, :games_users
  end
end
