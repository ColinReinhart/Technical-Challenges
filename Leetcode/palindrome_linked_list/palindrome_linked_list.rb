# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  arr = []
  until head.nil?
    arr << head.val
    head = head.next
  end
  if arr == arr.reverse
    return true
  else
    return false
  end
end

head1 = ListNode.new(1, ListNode.new(2, ListNode.new(2, ListNode.new(1))))
head2 = ListNode.new(1, ListNode.new(2))

p is_palindrome(head1)
p is_palindrome(head2)
