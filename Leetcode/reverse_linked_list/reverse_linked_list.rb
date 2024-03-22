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
def reverse_list(head)
  require 'pry'; binding.pry
end

head1 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
head2 = ListNode.new(1, ListNode.new(2))

p reverse_list(head1)
# p reverse_list(head2)
