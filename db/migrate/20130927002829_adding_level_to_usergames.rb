class AddingLevelToUsergames < ActiveRecord::Migration
  def change
  	add_column :usergames, :level, :integer
  end
end
