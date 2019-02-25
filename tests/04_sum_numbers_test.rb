require 'test/unit'
require_relative '../04_sum_numbers'

class LargestNumberTest < Test::Unit::TestCase
  def test_sum_numbes
    assert_equal(3, sum_numbers([1,1,1]))
    assert_equal(117, sum_numbers([5,2,100,0,10]))
    assert_equal(290, sum_numbers([55,23,183,0,29]))
    assert_equal(-4, sum_numbers([8,-2,-6,-5,1])) # negative numbers
    assert_equal(0, sum_numbers([])) # addition identity
    assert_raise TypeError do # passing wrong type of value
      sum_numbers("hello")
      sum_numbers(:puts)
    end
    assert_raise TypeError do # passing bad value inside array
      sum_numbers([1,2,3,"four"])
    end
  end
end
