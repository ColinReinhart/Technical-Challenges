# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  return head if head.nil? || head.next.nil?

  slow = head
  fast = head
  while !fast.nil? && !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
  end
  prev = nil
  current = slow.next
  slow.next = nil
  while current
    temp = current.next
    current.next = prev
    prev = current
    current = temp
  end

  first_half = head
  secod_half = prev

  while secod_half
    temp1 = first_half.next
    temp2 = secod_half.next
    first_half.next = secod_half
    secod_half.next = temp1
    first_half = temp1
    secod_half = temp2
  end
  head
end

head1 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
p reorder_list(head1)

head2 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4))))
p reorder_list(head2)
