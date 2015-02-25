# Project Euler problem 9

# Horrible brute force method
include Math

def runner()
  (1..1000).each do |a|
    (a..1000-a).each do |b|
      (b..1000-b).each do |c|
        if (a + b + c == 1000)
          if c == Math.sqrt(a*a + b*b)
            return a * b * c
          end
        end
      end
    end
  end
end

puts runner()
