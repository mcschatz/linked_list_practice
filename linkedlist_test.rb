require "minitest/pride"
require "minitest/autorun"
require_relative "linkedlist"

class LinkedListTest< Minitest::Test

  def test_one_node_can_append_a_node
    list = LinkedList.new
    list.push('1')
    assert_equal '1', list.head.data
  end

  def test_one_node_can_append_2_nodes
    list = LinkedList.new
    list.push('3')
    list.push('2')

    assert_equal '3', list.head.data
  end

  def test_it_removes_the_last_node
    list = LinkedList.new
    list.push('3')
    list.push('2')
    list.push('4')
    list.pop

    assert_equal nil, list.head.next_node.next_node
  end

  def test_it_can_delete_a_list
    list = LinkedList.new
    list.push('3')
    list.push('2')
    list.push('4')
    list.delete

    assert_equal nil, list.head
  end

  def test_it_can_count_a_list
    list = LinkedList.new
    list.push('3')
    list.push('2')
    list.push('4')

    assert_equal 3, list.count
  end

  def test_it_can_find_a_node
    list = LinkedList.new
    list.push('3')
    list.push('2')
    list.push('4')

    assert_equal '4', list.find(3)
    assert_equal '2', list.find(2)
    assert_equal '3', list.find(1)
  end
end