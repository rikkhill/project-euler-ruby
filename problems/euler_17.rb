# Project Euler Problem 17

def words_from_number n

  numword = {
    0     => "", # This one is important
    1     => "one",
    2     => "two",
    3     => "three",
    4     => "four",
    5     => "five",
    6     => "six",
    7     => "seven",
    8     => "eight",
    9     => "nine",
    10    => "ten",
    11    => "eleven",
    12    => "twelve",
    13    => "thirteen",
    14    => "fourteen",
    15    => "fifteen",
    16    => "sixteen",
    17    => "seventeen",
    18    => "eighteen",
    19    => "nineteen",
    20    => "twenty",
    30    => "thirty",
    40    => "forty",
    50    => "fifty",
    60    => "sixty",
    70    => "seventy",
    80    => "eighty",
    90    => "ninety",
    100   => "hundred",
    1000  => "thousand"
  }

  builder = ""

  thousands = n/1000
  if thousands != 0
    builder += numword[thousands] + numword[1000]
  end

  hundreds = (n%1000)/100
  if hundreds != 0
    builder += numword[hundreds] + numword[100]
  end

  tail = n%100

  if n > 100 && tail > 0
    builder += "and"
  end

  if tail > 0 && tail < 21
    builder += numword[tail]
  elsif tail >= 21
    builder += numword[(tail/10) * 10] + numword[tail%10]
  end

  return builder
end

puts (1..1000).map{|x|words_from_number(x).length}.reduce(:+)
