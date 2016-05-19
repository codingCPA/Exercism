class Sieve
  require 'prime'

  def initialize(limit)
    @limit = limit
  end

  def primes
    Prime.take_while {|p| p <= @limit }
  end
end

VERSION = 1
