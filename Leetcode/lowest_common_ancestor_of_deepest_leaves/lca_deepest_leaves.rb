# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {TreeNode}
def lca_deepest_leaves(root)
  dfs = lambda do |node|
    return [0, nil] if node.nil?

    left_depth, left_lca = dfs.call(node.left)
    right_depth, right_lca = dfs.call(node.right)

    if left_depth > right_depth
      [left_depth + 1, left_lca]
    elsif right_depth > left_depth
      [right_depth + 1, right_lca]
    else
      [left_depth + 1, node]
    end
  end

  dfs.call(root)[1]
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

tree = array_to_tree([3,5,1,6,2,0,8,nil,nil,7,4])
p lca_deepest_leaves(tree) #[2,7,4]

tree = array_to_tree([0,1,3,nil,2])
p lca_deepest_leaves(tree) #[2]
