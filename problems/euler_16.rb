# Project Euler Problem 16

def power_digit_sum n
  return (2**n).to_s.split("").map{|x| x.to_i}.reduce(:+)
end

puts power_digit_sum(1000)
