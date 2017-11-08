class Raindrops
  def self.convert(num)
    resultString = ""
    resultString << "Pling" if num % 3 == 0
    resultString << "Plang" if num % 5 == 0
    resultString << "Plong" if num % 7 == 0

    resultString != "" ? resultString : num.to_s
  end

end

class BookKeeping
  VERSION = 3
end
