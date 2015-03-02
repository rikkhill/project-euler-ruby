# Project Euler Problem 18

require_relative '../lib/euler_helpers.rb'
include FileHelper

def triangle_reductor(a,b)
  return a.each_cons(2).map{|x| x.max}.zip(b).map{|a| a[0] + a[1]}
end

triangle = FileHelper.read_into_array('data/problem_18.txt')

puts triangle.reverse.reduce{ |x, y| triangle_reductor(x, y) }
