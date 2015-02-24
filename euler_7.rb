# Project Euler Problem 7
# Sequential primes

require_relative 'euler_helpers'
include Helper

def nth_prime(n)
  count = 0
  candidate = 1 # If you will insist that 1 isn't prime
  while true # Oh yeah, baby...
    candidate +=1
    if Helper.prime?(candidate)
      count += 1
    end
    if count == n
      return candidate
    end
  end
end

puts nth_prime(10001)
