# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  require 'pry'; binding.pry
end

head1 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
p remove_nth_from_end(listhead1, 2) #[1,2,3,5]

head2 = ListNode.new(1)
# p remove_nth_from_end([1], 1) #[]

head3 = ListNode.new(1, ListNode.new(2))
# p remove_nth_from_end(head3, 1) #[1]
