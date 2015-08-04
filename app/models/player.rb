class Player < ActiveRecord::Base
	has_many :games, through: :playergames
	has_many :playergames
	validates :name, uniqueness: true

end
