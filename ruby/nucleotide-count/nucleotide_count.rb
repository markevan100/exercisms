class Nucleotide

  def initialize(dna)
    @dna = dna
  end

  def self.from_dna(dna)
    raise ArgumentError unless dna.match(/[^ATCG]/)
    Nucleotide.new(dna)
  end

  def count(letter)
    @dna.count(letter)
  end

  def histogram
    h = {}
    h['A'] = count('A')
    h['T'] = count('T')
    h['C'] = count('C')
    h['G'] = count('G')
    h
  end

  private
  attr_reader :dna
end
