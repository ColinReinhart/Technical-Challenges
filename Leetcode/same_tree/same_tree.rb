# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?

  (p.val == q.val) && is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end


def array_to_tree(array)
  return nil if array.nil? || array.empty?

  root = TreeNode.new(array[0])
  queue = [root]
  i = 1

  while i < array.length
    current = queue.shift

    if i < array.length && array[i]
      current.left = TreeNode.new(array[i])
      queue << current.left
    end
    i += 1

    if i < array.length && array[i]
      current.right = TreeNode.new(array[i])
      queue << current.right
    end
    i += 1
  end

  root
end

tree1 = array_to_tree([1,2,3])
tree2 = array_to_tree([1,2,3])
p is_same_tree(tree1, tree2) #true

tree1 = array_to_tree([1,2])
tree2 = array_to_tree([1,nil,2])
p is_same_tree(tree1, tree2) #false

tree1 = array_to_tree([1,2,1])
tree2 = array_to_tree([1,1, 2])
p is_same_tree(tree1, tree2) #false
