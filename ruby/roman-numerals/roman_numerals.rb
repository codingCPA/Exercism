class RomanNumerals 

  def to_roman
    @roman ||= begin
      roman = ""
      number = self

      roman_mapping.keys.each do |divisor|
        quotient, modulus = number.divmod(divisor)
        roman << roman_mapping[divisor] * quotient
        number = modulus
      end

      roman
    end
  end

  private

  def roman_mapping
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end

  VERSION = 1

end
