#!/usr/bin/env ruby

require "test/unit"

class TestSomething < Test::Unit::TestCase
  def test_two_plus_two
    assert_equal(4, 2 + 2, "Two plus two should equal four.")    
  end
end