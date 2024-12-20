require_relative 'game'
require_relative 'file_handler'
require_relative 'secret_word'

file = File_handler.new
secret_word = Secret_word.new

words = file.open_file('words.txt')
puts secret_word.pick_random_word(words)
