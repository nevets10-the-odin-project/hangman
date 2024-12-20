class Game
  attr_accessor :file_handler, :secret_word

  def initialize(file_handler, secret_word)
    self.file_handler = file_handler
    self.secret_word = secret_word
  end

  def start_game
    words = file_handler.open_file('words.txt')
    secret_word.pick_random_word(words)
    puts secret_word.secret_word
  end
end
