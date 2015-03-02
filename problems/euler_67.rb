# Project Euler Problem 67
# Flagrantly copied from Problem 18

require_relative '../lib/euler_helpers.rb'
require 'pp'
include FileHelper

def longest_triangle_path(triangle)

  triangle.reverse!
  merger = Array.new(triangle[0].count, 0)

  triangle.each do |line|

    merger = merger.zip(line).map{ |tup| tup[0] + tup[1] }
    if merger.count == 1
      return merger[0]
    end

    next_merger = []
    (0..line.count - 2).each do |i|
      next_merger << [ merger[i], merger[i+1] ].max
    end
    merger = next_merger

  end
  return merger
end

triangle = FileHelper.read_into_array('data/problem_67.txt')

puts longest_triangle_path(triangle)
