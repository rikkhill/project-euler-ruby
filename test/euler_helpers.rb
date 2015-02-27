# Tests for euler_helpers

require_relative '../lib/euler_helpers.rb'
require 'test/unit'
include Helper

class TestHelpers < Test::Unit::TestCase

  def test_factors
    factors = [1,2,4,5,8,10,20,25,40,50,100,200]
    assert_equal(factors, Helper.factors(200).sort)
  end

  def test_hcf
    ints = [555,777,333]
    assert_equal(111, Helper.hcf(ints))
  end

  def test_lcm
    ints = [330, 65, 15]
    assert_equal(4290, Helper.lcm(ints))
  end

  def test_lcm_again
    ints = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    assert_equal(2520, Helper.lcm(ints))
  end

  def test_sum_of_squares
    ints = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    assert_equal(385, Helper.sum_of_squares(ints))
  end

  def test_sum_of_squares
    ints = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    assert_equal(3025, Helper.square_of_sum(ints))
  end

  def test_triangle_number
    assert_equal(28, Helper.triangle_number(7))
  end

  def test_primality
    primes = [
      1,
      2,
      3,
      5,
      7,
      11,
      5915587277
    ]

    nonprimes = [
      4,
      6,
      8,
      9,
      15,
      2817,
      11*11,
      6*7
    ]

    primes.each do |prime|
      assert(Helper.prime?(prime), "#{prime} is not prime" )
    end

    nonprimes.each do |nonprime|
      assert(!Helper.prime?(nonprime), "#{nonprime} is prime" )
    end

  end

end
