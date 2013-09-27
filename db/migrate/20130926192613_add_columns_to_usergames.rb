class AddColumnsToUsergames < ActiveRecord::Migration
  def change
  	add_column :usergames, :profile_id, :integer
  	add_column :usergames, :profile_name, :string
  	add_column :usergames, :wins, :integer, :default => 0
  	add_column :usergames, :loses, :integer, :default => 0
  	add_column :usergames, :total_games, :integer, :default => 0
  	add_column :usergames, :rank, :string, :default => "Not Ranked"
  end
end
