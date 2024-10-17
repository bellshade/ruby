require 'minitest/autorun'
require_relative('../sorting/bubble_sorting')

class TestBubbleSort < Minitest::Test
  def test_array_tidak_disorting
    assert_equal [1, 2, 3, 4, 5], bubble_sort([3, 5, 1, 4, 2])
  end

  def test_satu_elemen
    assert_equal [5], bubble_sort([5])
  end
end
