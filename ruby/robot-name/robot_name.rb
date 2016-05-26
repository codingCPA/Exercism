class Robot
  ALPHA = ('A'..'Z').to_a
  NUMERIC = (1...10).to_a
  @taken = Hash.new

  def name
      @name ||= generate
  end

  def reset
    @name = nil
  end

  def self.taken
    @taken
  end

private

def generate
      name =  (ALPHA.sample(2) + NUMERIC.sample(3)).join('')
      if self.class.taken[name]
        generate
      else
        self.class.taken[name] = true
        name
      end
  end

VERSION = 1

end
