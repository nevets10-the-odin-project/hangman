class Secret_word
  attr_accessor :secret_word, :correct_guesses, :incorrect_guesses

  def pick_random_word(words)
    rng = Random.new
    filtered_words = words.filter { |word| word.chomp.length.between?(5, 12) }
    self.secret_word = filtered_words[rng.rand(0..(filtered_words.length - 1))].chomp.split('')
    self.correct_guesses = []
    self.incorrect_guesses = []
  end

  def print_secret_word
    secret_word.each do |letter|
      output = correct_guesses.include?(letter) ? letter : '_'
      print " #{output} "
    end
  end

  def check_guess(guess)
    if secret_word.include?(guess)
      correct_guesses << guess
    else
      incorrect_guesses << guess
    end
  end
end
