require 'json'

class File_handler
  attr_accessor :file_name

  def open_file(file_name)
    file = File.open(file_name)

    words = []

    while line = file.gets
      words << line
    end

    file.close

    words
  end

  def to_json(game)
    JSON.dump({
                current_turn: game.current_turn,
                secret_word: game.secret_word.secret_word,
                correct_guesses: game.secret_word.correct_guesses,
                incorrect_guesses: game.secret_word.incorrect_guesses
              })
  end

  def save(game)
    file = File.open('save.txt', 'w')
    file.puts to_json(game)
    file.close
  end

  def load
  end
end
