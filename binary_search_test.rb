gem 'minitest'
require 'minitest/autorun'
require './lib/binary_search'

class BinarySearchTest < Minitest::Test
  def test_it_exists
    assert BinarySearch
  end

  def test_it_can_store_data_in_its_head
    skip
    tree = BinarySearch.new
    tree.push(1)
    assert_equal 1, tree.head.value
  end

  def test_it_has_a_right_and_a_left
    tree = BinarySearch.new
    input = "2,1,3"
    tree.load_tree(input)
    tree.push(3)
    tree.push(1)
    assert_equal 1, tree.left.value
    assert_equal 3, tree.right.value
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
    node.push(5)
    node.push(7)
    assert_equal 5, node.right.right.value
    assert_equal 7, node.right.right.right.value
    node.push(0)
    assert_equal 0, node.left.left.value
  end

end
