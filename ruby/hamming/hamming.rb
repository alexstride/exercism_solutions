class Hamming
  def self.compute(string1, string2)
    raise ArgumentError unless string1.length == string2.length
    result = 0
    string1.chars.each_with_index do |char, index|
      result += 1 unless string2[index] == char
    end
    result
  end
end

class BookKeeping
  VERSION = 3
end
