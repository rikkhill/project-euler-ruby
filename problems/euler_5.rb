# Project Euler problem 5

require_relative '../lib/euler_helpers.rb'
include Helper

# Brute force method: the value is going to be between n and n!
# Iterate through that range for a value whose factors are a superset
# of {1..n}
def smallest_multiple(n)
  range = (1..n).to_a
  return Helper.lcm(range)
end


puts smallest_multiple(20)
