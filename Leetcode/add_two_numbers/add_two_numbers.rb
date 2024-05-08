# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  @array = []

  def arr_ll(ll)
    arr = []
    wip = ll
    until wip == nil do
      arr << wip.val
      wip = wip.next
    end
    @array << arr.reverse.join('').to_i
  end
  arr_ll(l1)
  arr_ll(l2)
  @array.sum.to_s.split('').reverse.map { |s| s.to_i }
end

list1 = ListNode.new(2, ListNode.new(4, ListNode.new(9, ListNode.new)))
list2 = ListNode.new(5, ListNode.new(6, ListNode.new(4, ListNode.new(9, ListNode.new))))
p add_two_numbers(list1, list2)
