get '/' do
  # Look in app/views/index.erb
  # ask for initials of both players
  erb :index
end

#submit initials
post '/games/new' do
	

	@player1 = Player.find_or_create_by(name: params[:player1])
	@player2 = Player.find_or_create_by(name: params[:player2])
	@game = Game.create(done: false)
	playergame = Playergame.create(player: @player1, game: @game, player_num: 1)
	playergame = Playergame.create(player: @player2, game: @game, player_num: 2)

	erb :game
end

#start game


#game id

put '/games/:game_id' do
	
	@game = Game.find(params[:game_id])
	@game.update(done: true)
	winner = @game.playergames.where(player_num: params[:player_num]).first
	winner.update(winner: true, final_index: 19)
	loser = @game.playergames.where.not(player_num: params[:player_num]).first
	loser.update(winner: false, final_index: params[:loser_index])
	
end

get '/games/:game_id' do

	@game = Game.find(params[:game_id])
	@winner = @game.playergames.where(winner: true).first.player
	@loser = @game.playergames.where(winner: false).first.player
	

	erb :result

end
	
	
		# p.integer :player_id, index: true
  # 		p.integer :game_id, index: true
  # 		p.integer :player_num
  # 		p.boolean :winner
  # 		p.integer :final_index


  # 			g.boolean :done
  # 		g.float :time