# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {Integer[]} nums
# @param {ListNode} head
# @return {ListNode}
def modified_list(nums, head)
  require 'pry'; binding.pry
end

p modified_list( [1,2,3], [1,2,3,4,5]) #[4, 5]
# p modified_list( [1], [1,2,1,2,1,2]) #[2, 2, 2]
# p modified_list( [5], [1,2,3,4]) #[1, 2, 3, 4]
