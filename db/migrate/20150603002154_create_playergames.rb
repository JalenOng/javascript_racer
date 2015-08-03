class CreatePlayergames < ActiveRecord::Migration
  def change
  	create_table :playergames do |p|
  		p.integer :player_id, index: true
  		p.integer :game_id, index: true
  		p.integer :player_num
  		p.boolean :winner
  		p.integer :final_index
  		p.timestamps
  	end

  end
end
