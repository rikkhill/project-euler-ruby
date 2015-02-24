# Project Euler Problem 6

require_relative 'euler_helpers'
include Helper

def ssq_minus_sqs(n)
  range = (1..n).to_a
  return Helper.square_of_sum(range) - Helper.sum_of_squares(range)
end

puts ssq_minus_sqs(100)
