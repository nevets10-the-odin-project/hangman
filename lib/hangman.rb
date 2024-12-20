require_relative 'game'
require_relative 'file_handler'
require_relative 'secret_word'

file_handler = File_handler.new
secret_word = Secret_word.new
game = Game.new(file_handler, secret_word)

words = file_handler.open_file('words.txt')
puts secret_word.pick_random_word(words)
