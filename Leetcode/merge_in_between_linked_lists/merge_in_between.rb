# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {Integer} a
# @param {Integer} b
# @param {ListNode} list2
# @return {ListNode}
def merge_in_between(list1, a, b, list2)
    require 'pry'; binding.pry
end

list1 = ListNode.new(0, ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5))))))
list2 = ListNode.new(1000000, ListNode.new(1000001, ListNode.new(1000002, ListNode.new(1000003, ListNode.new(1000004))))

merge_in_between(list1, 3, 4, list2)
# Output: [0,1,2,1000000,1000001,1000002,1000003,1000004,5]

# list1 = ListNode.new(0, ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5))))))
# list2 = ListNode.new(1000000, ListNode.new(1000001, ListNode.new(1000002, ListNode.new(1000003, ListNode.new(1000004))))
