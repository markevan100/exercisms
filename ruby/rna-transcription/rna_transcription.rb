class Complement

  def self.of_dna(dna)
    dna.split("").map { |l| transcribe(l) }.join
  end

  private
  def self.transcribe(dna)
    case dna
      when "G"
        "C"
      when "C"
        "G"
      when "T"
        "A"
      when "A"
        "U"
      else
        ""
    end
  end
end
