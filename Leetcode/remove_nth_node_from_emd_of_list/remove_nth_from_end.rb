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
# Function to remove Nth node from the end of the list
def remove_nth_from_end(head, n)
  # Create a dummy node before head to handle edge cases (e.g., removing head itself)
  dummy = ListNode.new(0, head)
  slow = dummy
  fast = dummy

  # Step 1: Move fast pointer `n + 1` steps ahead
  (n + 1).times do
    fast = fast.next
  end

  # Step 2: Move both slow and fast until fast reaches the end
  while fast
    slow = slow.next
    fast = fast.next
  end

  # Step 3: Remove the target node (slow is now before the node to be deleted)
  slow.next = slow.next.next

  # Return the new head (skip dummy)
  dummy.next
end

# Helper method to convert linked list to array for easy debugging
def linked_list_to_array(head)
  arr = []
  while head
    arr << head.val
    head = head.next
  end
  arr
end

head1 = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
p remove_nth_from_end(head1, 2) #[1,2,3,5]

head2 = ListNode.new(1)
p remove_nth_from_end([1], 1) #[]

head3 = ListNode.new(1, ListNode.new(2))
p remove_nth_from_end(head3, 1) #[1]
