require 'set'
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
end

def del_nodes(root, to_delete)
  to_delete_set = to_delete.to_set
  result = []

  def helper(node, to_delete_set, result)
    return nil if node.nil?

    node.left = helper(node.left, to_delete_set, result)
    node.right = helper(node.right, to_delete_set, result)

    if to_delete_set.include?(node.val)
      result << node.left if node.left
      result << node.right if node.right
      return nil
    end

    node
  end

  root = helper(root, to_delete_set, result)
  result << root if root

  result
end


# Helper method to build a tree from array input
def build_tree(array, index = 0)
  return nil if index >= array.length || array[index].nil?

  root = TreeNode.new(array[index])
  root.left = build_tree(array, 2 * index + 1)
  root.right = build_tree(array, 2 * index + 2)
  root
end

# Helper method to print trees for debugging
def print_tree(root)
  return if root.nil?

  print "#{root.val} "
  print_tree(root.left)
  print_tree(root.right)
end

# Example usage
root = build_tree([1, 2, 3, 4, 5, 6, 7])
to_delete = [3, 5]
forest = del_nodes(root, to_delete)

forest.each do |tree|
  print_tree(tree)
  puts
end

root = build_tree([1, 2, 3, 4, 5, 6, 7])
to_delete = [3, 5]
forest = del_nodes(root, to_delete)

forest.each do |tree|
  print_tree(tree)
  puts
end
