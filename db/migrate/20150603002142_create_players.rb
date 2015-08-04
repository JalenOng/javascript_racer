class CreatePlayers < ActiveRecord::Migration
  def change
  	create_table :players do |p|
  		p.string :name, limit: 32
  		p.timestamps
  	end

  
  end
end
