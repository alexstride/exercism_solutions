class Complement
  def self.of_dna(dna_string)
    transcriptionHash = {G: "C", C: "G", T: "A", A: "U"}
    mappedChars = dna_string.chars.map {|char| transcriptionHash.fetch(char.to_sym, false)}
    return mappedChars.join if mappedChars.all?
    ""
  end
end

class BookKeeping
  VERSION = 4
end
