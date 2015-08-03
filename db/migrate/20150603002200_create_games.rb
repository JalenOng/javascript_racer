class CreateGames < ActiveRecord::Migration
  def change
  	create_table :games do |g|
  		g.boolean :done
  		g.float :time
  		g.timestamps
  	end
  end
end
