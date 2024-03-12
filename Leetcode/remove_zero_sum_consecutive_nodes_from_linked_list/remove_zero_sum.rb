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
    require 'pry'; binding.pry
end

p remove_zero_sum_sublists([1,2,-3,3,1])
p remove_zero_sum_sublists([1,2,3,-3,4])
p remove_zero_sum_sublists([1,2,3,-3,-2])
