class Pangram
  def self.pangram?(phrase)
    (("abcdefghijklmnopqrstuvwxyz".chars) - phrase.downcase.chars).length == 0
  end
end

class BookKeeping
  VERSION = 5
end
