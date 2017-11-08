def convert_digit(digit, unit_string, five_string, ten_string)
  case digit
  when "0"
    numerals = ""
  when "1"
    numerals = unit_string
  when "2"
    numerals = unit_string * 2
  when "3"
    numerals = unit_string * 3
  when "4"
    numerals = unit_string + five_string
  when "5"
    numerals = five_string
  when "6"
    numerals = five_string + unit_string
  when "7"
    numerals = five_string + unit_string * 2
  when "8"
    numerals = five_string + unit_string * 3
  when "9"
    numerals = unit_string + ten_string
  end
  numerals
end

class Integer
  def to_roman(base: 10)
    resultArr = []
    self.to_s.chars.reverse.each_with_index do |digit, index|
      case index
      when 0
        resultArr << convert_digit(digit, "I", "V", "X")
      when 1
        resultArr << convert_digit(digit, "X", "L", "C")
      when 2
        resultArr << convert_digit(digit, "C", "D", "M")
      when 3
        resultArr << convert_digit(digit, "M", "*", "*")
      end
    end
    resultArr.reverse.join
  end
end

class BookKeeping
  VERSION = 2
end
