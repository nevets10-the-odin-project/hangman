class Secret_word
  attr_accessor :secret_word, :correct_guesses, :incorrect_guesses

  def initialize(words, data)
    self.secret_word = data.empty? ? pick_random_word(words) : data.secret_word
    self.correct_guesses = data.empty? ? [] : data.correct_guesses
    self.incorrect_guesses = data.empty? ? [] : data.incorrect_guesses
  end

  def pick_random_word(words)
    rng = Random.new
    filtered_words = words.filter { |word| word.chomp.length.between?(5, 12) }
    filtered_words[rng.rand(0..(filtered_words.length - 1))].chomp.split('')
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
