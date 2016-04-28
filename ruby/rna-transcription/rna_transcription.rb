class Complement
VERSION = 3

 def self.of_dna(strand)
   dna = Hash.new
   dna["G"] = "C"
   dna["C"] = "G"
   dna["T"] = "A"
   dna["A"] = "U"
   strand.chars.map { |e| dna.fetch(e)}.join
 rescue KeyError
     raise ArgumentError
 end

end
