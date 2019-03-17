# Add tests to me :D

require 'test/unit'
require_relative '../16_palindrome'

class PalindromeTest < Test::Unit::TestCase
    def test_palidrome
      assert_true(palindrome("racecar"))
      assert_false(palindrome("hello"))
    end
  end