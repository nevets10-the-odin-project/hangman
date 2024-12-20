class Game
  attr_accessor :file_handler, :secret_word

  GUESS_COUNT = 12

  def initialize(file_handler, secret_word)
    self.file_handler = file_handler
    self.secret_word = secret_word
  end

  def start_game
    words = file_handler.open_file('words.txt')
    secret_word.pick_random_word(words)

    GUESS_COUNT.times do |turn_num|
      take_turn(turn_num)
      break if secret_word.secret_word.all? { |letter| secret_word.correct_guesses.include?(letter) }
    end

    puts "The word was #{secret_word.secret_word.join.chomp}!"
  end

  def take_turn(turn_num)
    system 'clear -x'
    secret_word.print_secret_word
    puts ''
    puts "Guess ##{turn_num + 1} of #{GUESS_COUNT}"
    puts "CORRECT: #{secret_word.correct_guesses}"
    puts "WRONG: #{secret_word.incorrect_guesses}"
    puts 'Type save to save the game'
    guess = gets.downcase.chomp

    if guess == 'save'
      file_handler.save
      puts 'saved!'
      guess = gets.downcase
    end

    secret_word.check_guess(guess[0])
  end
end
