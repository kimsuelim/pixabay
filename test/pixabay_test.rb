require 'test_helper'

class PixabayTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Pixabay::VERSION
  end
end
