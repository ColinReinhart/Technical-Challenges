# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}

def remove_zero_sum_sublists(head)
  dummy = ListNode.new(0)
  dummy.next = head
  sum = 0
  h = {}
  cur = dummy
  while cur
    sum += cur.val
    h[sum] = cur
    cur = cur.next
  end
  sum = 0
  cur = dummy
  while cur
    sum += cur.val
    cur.next = h[sum].next
    cur = cur.next
  end
  dummy.next
end

def create_linked_list(values)
  return nil if values.empty?

  head = ListNode.new(values[0])
  current = head

  (1...values.length).each do |i|
    current.next = ListNode.new(values[i])
    current = current.next
  end

  head
end

def print_linked_list(head)
  current = head
  while current
    print current.val
    print ' -> ' if current.next
    current = current.next
  end
  puts
end

head1 = create_linked_list([1,2,-3,3,1])
head2 = create_linked_list([1,2,3,-3,4])
head3 = create_linked_list([1,2,3,-3,-2])

puts "Example 1:"
print_linked_list(head1)
puts "Example 2:"
print_linked_list(head2)
puts "Example 3:"
print_linked_list(head3)
