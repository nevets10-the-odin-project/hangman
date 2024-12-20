class Game
  attr_accessor :file_handler, :secret_word

  GUESS_COUNT = 8

  def initialize(file_handler, secret_word)
    self.file_handler = file_handler
    self.secret_word = secret_word
  end

  def start_game
    words = file_handler.open_file('words.txt')
    secret_word.pick_random_word(words)

    GUESS_COUNT.times do |turn_num|
      take_turn(turn_num)
    end
  end

  def take_turn(turn_num)
    puts "Guess ##{turn_num + 1}"
  end
end
