# Project Euler Problem 2
# Summing Fib Sequence numbers

# fib_sequence - returns an array of a Fibonacci
# sequence terms where no term exceeds `limit`
def fib_sequence(limit)
  seq = [1,2]
  while seq[-1] + seq[-2] < limit do
    seq << seq[-1] + seq[-2]
  end

  return seq
end

fibseq = fib_sequence(4000000)
sum = 0
fibseq.each do |elem|
  if elem % 2 == 0
    sum += elem
  end
end

puts sum
