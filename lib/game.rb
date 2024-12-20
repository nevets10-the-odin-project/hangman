class Game
  attr_accessor :file_handler, :secret_word

  def initialize(file_handler, secret_word)
    self.file_handler = file_handler
    self.secret_word = secret_word
  end

  def start_game
  end
end
