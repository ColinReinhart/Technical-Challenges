# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  [l1.reverse.join.to_i + l2.reverse.join.to_i].to_s.split('').reverse.map(&:to_i)[1..-2]
end


p add_two_numbers([2,4,3], [5,6,4])
p add_two_numbers([0], [0])
p add_two_numbers([9,9,9,9,9,9,9], [9,9,9,9])
