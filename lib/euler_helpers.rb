# Helper functions for Project Euler

require 'pp'
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

# Highest common factor
# Takes an array of integers and finds their highest common factor
  def hcf(arr)
    bigarr = arr.map{ |x| factors(x) }
    return bigarr.reduce(:&).sort.last
  end

# Lowest common multiple
# We'll see how this one ends up going, shall we?
  def lcm(arr)
    return arr.reduce{|a,b| (a*b)/hcf([a,b])}
  end

# Sum of squares

  def sum_of_squares(arr)
    return arr.map{|x| x*x}.reduce(:+)
  end

# Square of sum
  def square_of_sum(arr)
    return arr.reduce(:+) ** 2
  end

  def triangle_number(n)
    return (1..n).reduce(:+)
  end
end

# File utils

module FileHelper
  # Take a file and read it in line by line, splitting into arrays
  def read_into_array filename
    builder = []
    File.readlines(filename).each do |line|
      builder << line.split.map{ |x| x.strip.to_i }
    end
    return builder.reject{ |x| x.empty? }
  end
end
