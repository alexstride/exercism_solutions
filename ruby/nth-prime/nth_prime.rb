class Prime
  def self.nth(n)
    raise ArgumentError unless n > 0
    primes = [2]
    while n > primes.length
      nextNum = primes[-1] + 1
      while primes.map { |element| nextNum % element == 0 }.any? do
        nextNum += 1
      end
      primes.push nextNum
    end
    primes[-1]
  end
end

class BookKeeping
 VERSION = 1
end
