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

  def to_json(obj)
  end

  def save(game)
    file = File.open('save.txt', 'w')
    to_json(game)
    file.close
  end

  def load
  end
end
