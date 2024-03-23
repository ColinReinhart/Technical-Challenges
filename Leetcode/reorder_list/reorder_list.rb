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
  require 'pry'; binding.pry
end

head1 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
reorder_list(head1)

head2 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4))))
reorder_list(head2)
