class Secret_word
  attr_accessor :secret_word

  def pick_random_word(words)
    rng = Random.new
    filtered_words = words.filter { |word| word.chomp.length.between?(5, 12) }
    self.secret_word = filtered_words[rng.rand(0..(filtered_words.length - 1))].split('')
  end

  def print_secret_word
  end

  def check_guess
  end

  def update_correct
  end

  def update_incorrect
  end
end
