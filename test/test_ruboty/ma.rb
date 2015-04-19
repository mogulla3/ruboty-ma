require 'minitest_helper'

class TestRuboty::Ma < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ruboty::Ma::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
