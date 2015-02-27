# Project Euler Problem 4

def palindrome?(numstring)
  numarr = numstring.to_s.split("")
  if numarr == numarr.reverse
    return true
  end
  return false
end

largest_palindrome = 0

(100..1000).each do |i|
(100..1000).each do |j|
    if (i * j) > largest_palindrome then
      if palindrome?(i * j) then
        largest_palindrome = (i * j)
      end
    end
  end
end

puts largest_palindrome
