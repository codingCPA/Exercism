class Raindrops

 X = [3,5,7]
 Y = ["Pling","Plang","Plong"]

  def self.is_factor?(number, prime)
     (number % prime).zero?
  end

   def self.convert(number)
     display = ""
    X.zip(Y).each {
      |h , i|
      face = is_factor?(number, h)
      display << i if face == true
    }
     display
     display.size == 0 ? number.to_s : display
  end



  VERSION = 1

end
