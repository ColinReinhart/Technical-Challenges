require 'set'
# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {Integer[]} nums
# @param {ListNode} head
# @return {ListNode}
def modified_list(nums, head)
  # Use a set for O(1) lookup
  num_set = nums.to_set

  # Dummy node to handle edge cases
  dummy = ListNode.new(0)
  dummy.next = head
  prev, current = dummy, head

  # Traverse the linked list
  while current
    if num_set.include?(current.val)
      # Skip the current node
      prev.next = current.next
    else
      prev = current
    end
    current = current.next
  end

  # Return the modified list starting from dummy.next
  dummy.next
end

# Helper function to create a linked list from an array
def create_linked_list(arr)
  return nil if arr.empty?
  head = ListNode.new(arr[0])
  current = head
  arr[1..-1].each do |val|
    current.next = ListNode.new(val)
    current = current.next
  end
  head
end

# Helper function to print a linked list
def print_linked_list(head)
  current = head
  result = []
  while current
    result << current.val
    current = current.next
  end
  p result
end

# Example usage
head = create_linked_list([1, 2, 3, 4, 5])
modified_head = modified_list([1, 2, 3], head)
print_linked_list(modified_head) # Output: [4, 5]
