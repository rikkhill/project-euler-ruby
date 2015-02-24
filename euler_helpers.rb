# Helper functions for Project Euler

include Math

## Maths

module Helper

# Break an integer down into its factors
  def factors(n)
    factors = []
    (1..Math.sqrt(n).ceil).each do |candidate|
      if n % candidate == 0
        factors << candidate
        factors << (n / candidate)
      end
    end

    return factors.uniq
  end

# Highest common factor
# Takes an array of integers and finds their highest common factor
  def hcf(arr)
    bigarr = []
    arr.each do |elem|
      bigarr << factors(elem)
    end
    return bigarr.reduce(:&)
  end

# prime? - returns the primality of an integer
# Not particularly elegant.
# Check divisibility by two, then check divisibility by
# all smaller odd integers <= the sqrt of the integer
  def prime?(n)
    if n == 1 || n == 2
      return true
    end
    if n % 2 == 0
      return false
    end
    range_limit = (Math.sqrt(n)).ceil
    (3..range_limit).step(2).each do |int|
      if n % int == 0
        return false
      end
    end
    return true
  end
end
