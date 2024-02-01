class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# Function to count pseudo-palindromic paths
def pseudo_palindromic_paths(root)
  @palindromic_paths = 0
  @instances = Hash.new(0)
  count(root)
  require 'pry'; binding.pry
  return @palindromic_paths
end

def count(root)
  @instances[root.val] += 1
  if root.left == nil && root.right == nil
    @palindromic_paths += 1 if palindromic?
  else
    count(root.left) if root.left
    count(root.right) if root.right
  end
end

def palindromic?
  odd = @instances.values.count { |num| num.odd? }
  return odd <= 1
end

# Example 1
root1 = TreeNode.new(2)
root1.left = TreeNode.new(3)
root1.right = TreeNode.new(1)
root1.left.left = TreeNode.new(3)
root1.left.right = TreeNode.new(1)
root1.right.right = TreeNode.new(1)

puts pseudo_palindromic_paths(root1) # Output should be 2

# Example 2
root2 = TreeNode.new(2)
root2.left = TreeNode.new(1)
root2.right = TreeNode.new(1)
root2.left.left = TreeNode.new(1)
root2.left.right = TreeNode.new(3)
root2.right.right = TreeNode.new(1)

# puts pseudo_palindromic_paths(root2) # Output should be 1

# Example 3
root3 = TreeNode.new(9)

# puts pseudo_palindromic_paths(root3) # Output should be 1
