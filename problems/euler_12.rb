# Project Euler Problem 12

# Another inelegant brute force method
# I blame mathematicians, on principle

require_relative '../lib/euler_helpers.rb'
include Helper

def triangular_divisors(n)
  count = 0
  while true
    count +=1
    triangle_number = Helper.triangle_number(count)
    if Helper.factors(triangle_number).count > n
      return triangle_number
    end
  end
end

puts triangular_divisors(500)
