require_relative 'game'
require_relative 'file_handler'
require_relative 'secret_word'

file_handler = File_handler.new
secret_word = Secret_word.new
game = Game.new(file_handler, secret_word)

game.start_game
