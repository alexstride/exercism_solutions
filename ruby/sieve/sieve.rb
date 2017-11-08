class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    resultArray = (2..@limit).to_a

    resultArray.each_with_index do |number, index|
      next unless number
      position = index + 1
      while position <= resultArray.length
        position +=1
        next unless resultArray[position]
        resultArray[position] = nil if (resultArray[position]) % number == 0
      end
    end
  resultArray.compact
  end

end

class BookKeeping
  VERSION = 1
end
