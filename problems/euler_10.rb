# Project Euler Problem 10
# Summation of primes
# Another Brute Force Masterclass

require_relative '../lib/euler_helpers.rb'
include Helper

def sum_of_primes_below(n)
  return n.downto(2).select{|x| Helper.prime?(x)}.reduce(:+)
end

puts sum_of_primes_below(2000000)
