# Project Euler Problem 14

def collatz_count(n)
  n_prime = n
  count = 0
  while n_prime != 1
    if n_prime % 2 == 0
      n_prime = n_prime / 2
    else
      n_prime = (3 * n_prime) + 1
    end
    count +=1
  end
  return count
end

highest_count = 0
highest_x = 0
(1..999999).each do |x|
  collatz = collatz_count(x)
  if collatz > highest_count
    highest_count = collatz
    highest_x = x
  end
end

puts highest_x
