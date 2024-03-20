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
  dummy = ListNode.new(0)
  dummy.next = list1
  current = dummy
  a.times { current = current.next }

  node_before_a = current
  (b - a + 1).times { current = current.next }

  node_after_b = current.next

  node_before_a.next = list2
  until list2.next.nil?
    list2 = list2.next
  end
  list2.next = node_after_b

  dummy.next
end

list1 = ListNode.new(0, ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5))))))
list2 = ListNode.new(1000000, ListNode.new(1000001, ListNode.new(1000002, ListNode.new(1000003, ListNode.new(1000004)))))

p merge_in_between(list1, 3, 4, list2)
