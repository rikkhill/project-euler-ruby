# Project Euler Problem 18

require_relative '../lib/euler_helpers.rb'
require 'pp'
include FileHelper

def longest_triangle_path(triangle)

  triangle.reverse!
  squisher = Array.new(triangle[0].count, 0)

  triangle.each do |line|
    # This is kind of icky..
#    pp squisher
    next_squisher = squisher.map.with_index{ |x, i| x + line[i] }
    next_squisher.pop
    squisher = []
    next_squisher.each_with_index do |y, i|
      squisher << [ y, (next_squisher[i + 1] || 0) ].max
    end
  end
  return squisher[0]
end

triangle = FileHelper.read_into_array('data/problem_18.txt')

puts longest_triangle_path(triangle)
