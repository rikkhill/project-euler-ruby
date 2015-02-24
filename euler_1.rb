# Project Euler Problem 1
# multiples of 3 and 5

sum = 0

(0..999).each do |topic|
  if topic % 3 == 0 || topic % 5 == 0
    sum += topic
  end
end

puts sum
