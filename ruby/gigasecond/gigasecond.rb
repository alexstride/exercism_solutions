require 'time'

class Gigasecond
  def self.from(time)
    Time.at(time + 1000000000)
  end
end

class BookKeeping
  VERSION = 6
end
