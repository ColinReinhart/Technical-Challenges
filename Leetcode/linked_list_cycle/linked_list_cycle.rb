# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  require 'pry'; binding.pry
end


ll1 = ListNode.new(3)
ll1.next = ListNode.new(2)
ll1.next.next = ListNode.new(0)
ll1.next.next.next = ListNode.new(-4)

p hasCycle(ll1)
