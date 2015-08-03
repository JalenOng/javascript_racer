class Game < ActiveRecord::Base
	has_many :players, through: :playergames
	has_many :playergames
end
