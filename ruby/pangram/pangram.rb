class Pangram
  def self.is_pangram?(str)
    return false if str.length < 26
    hash = {}
    str.downcase.each_char do |x|
      hash[x] = true if ('a'..'z').include?(x)# x is not in the alphabet
    end
    hash.keys.count == 26
  end

VERSION = 1

end
