gem 'minitest'
require 'minitest/autorun'
require './lib/binary_search'

class BinarySearchTest < Minitest::Test
  def test_it_exits
    assert BinarySearch
  end

  def test_it_can_store_data_in_its_head
    search = BinarySearch.new
    search.push(1)
    assert_equal 1, search.head.value
  end

  def test_it_has_a_right_and_a_left
    skip
    search = BinarySearch.new
    search.push(2)
    search.push(3)
    search.push(1)
    assert_equal 1, search.left.value
    assert_equal 3, search.right.value
  end
end

class NodeTest < Minitest::Test
  def test_each_node_has_data
    node = Node.new(2)
    assert_equal 2, node.value
    node.push(1)
    node.push(3)
    assert_equal 1, node.left.value
    assert_equal 3, node.right.value
  end
end
