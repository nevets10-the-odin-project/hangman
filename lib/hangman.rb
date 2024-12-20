require_relative 'game'
require_relative 'file_handler'
require_relative 'secret_word'

file = File_handler.new

words = file.open_file('words.txt')

p words
