require_relative "node"

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def push(data)
    if @head == nil
      @head = Node.new(data)
    else
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.next_node = Node.new(data)
    end
  end

  def pop
    current = @head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    current.next_node = nil
  end

  def delete
    @head = nil
  end

  def count
    counter = 0
    current = @head
    until current == nil
      current = current.next_node
      counter += 1
    end
    counter
  end

  def find(n)
    current = @head
    counter = 1
    until counter == n
      current = current.next_node
      counter += 1
    end
    current.data
  end
end