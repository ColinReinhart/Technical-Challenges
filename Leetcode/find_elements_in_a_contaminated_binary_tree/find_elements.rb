class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class FindElements
  def initialize(root)
    @values = Set.new  # Store all node values for O(1) lookup
    recover_tree(root, 0) if root
  end

  def recover_tree(node, val)
    return unless node
    node.val = val
    @values.add(val)
    recover_tree(node.left, 2 * val + 1)
    recover_tree(node.right, 2 * val + 2)
  end

  def find(target)
    @values.include?(target)
  end
end
