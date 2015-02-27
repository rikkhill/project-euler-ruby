# Project Euler Problem 3
# Largest prime factor

require_relative '../lib/euler_helpers.rb'
include Helper

def largest_prime_factor(int)
  lpf = 1
  Helper.factors(int).each do |fact|
    if Helper.prime?(fact) && fact > lpf
      lpf = fact
    end
  end
  return lpf
end

puts largest_prime_factor(600851475143)
