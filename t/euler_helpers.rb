# Tests for euler_helpers

require_relative '../euler_helpers.rb'
require 'test/unit'
include Helper

class TestHelpers < Test::Unit::TestCase

  def test_factors
    factors = [1,2,4,5,8,10,20,25,40,50,100,200]
    assert_equal(factors, Helper.factors(200).sort)
  end

  def test_hcf
    ints = [555,777,333]
    assert_equal(Helper.hcf(ints).sort[-1], 111)
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
