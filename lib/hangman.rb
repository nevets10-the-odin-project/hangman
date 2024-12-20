require_relative 'game'
require_relative 'file_handler'
require_relative 'secret_word'

file_handler = File_handler.new
words = file_handler.open_file('words.txt')
puts 'load game? (y/N)'
do_load = gets

data = do_load.downcase == 'y' ? file_handler.load : {}

secret_word = Secret_word.new(words, data)
game = Game.new(file_handler, secret_word, data)

game.start_game
