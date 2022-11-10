#!/usr/bin/env ruby

require "test/unit"

class TestClass < Test::Unit::TestCase

  def test_class
    result = 1 + 1
    assert(result = 2, "The result should be 2.")
  end

end