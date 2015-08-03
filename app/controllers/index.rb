get '/' do
  # Look in app/views/index.erb
  # ask for initials of both players
  erb :index
end

#submit initials
post '/game/new' do
	

	@player1 = Player.find_or_create_by(name: params[:player1])
	@player2 = Player.find_or_create_by(name: params[:player2])
	@game = Game.create()
	playergame = Playergame.create(player: @player1, game: @game, player_num: 1)
	playergame = Playergame.create(player: @player2, game: @game, player_num: 2)

	erb :game
end

#start game
get '/game/new' do


 erb :game

#game id

end

get '/game/results' do

#display results

end
	