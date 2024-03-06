class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def has_cycle(head)
    return false if head.nil? || head.next.nil?

    slow = head
    fast = head.next

    while fast && fast.next
        return true if slow == fast

        slow = slow.next
        fast = fast.next.next
    end

    false
end

def create_linked_list_with_cycle(values, pos)
    return nil if values.empty?

    head = ListNode.new(values[0])
    current = head
    cycle_node = nil

    (1...values.length).each do |i|
        current.next = ListNode.new(values[i])
        current = current.next
        cycle_node = current if i == pos
    end

    if pos >= 0
        cycle_node = head if pos == 0
        current.next = cycle_node
    end

    head
end

head1 = create_linked_list_with_cycle([3, 2, 0, -4], 1)
puts has_cycle(head1)

head2 = create_linked_list_with_cycle([1, 2], 0)
puts has_cycle(head2)

head3 = create_linked_list_with_cycle([1], -1)
puts has_cycle(head3)
