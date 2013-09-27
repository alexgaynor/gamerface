class CreatingGames < ActiveRecord::Migration
  def change
  	create_table(:games) do |t|
  		t.integer :id
  		t.string :title, :null => false
  		t.string :genre, :null => false
  		t.string :developer, :null => false
  		t.string :console, :null => false
  		t.timestamps :release_date
  		t.string :game_url
  		t.string :status_url
  	end
  end
end
