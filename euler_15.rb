# Project Euler Problem 15

# This is just 40C20

def choose n, k
  return (1..n).reduce(:*) / ( (1..k).reduce(:*) * (1..n-k).reduce(:*) )
end

## (It seems like `inject` and `reduce` are the same thing)

puts choose(40, 20)
