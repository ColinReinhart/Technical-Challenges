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
def balance_bst(root)
  nodes = []
  inorder_traversal(root, nodes)
  build_balanced_bst(nodes, 0, nodes.size - 1)
end

def inorder_traversal(node, nodes)
  return if node.nil?
  inorder_traversal(node.left, nodes)
  nodes << node
  inorder_traversal(node.right, nodes)
end

def build_balanced_bst(nodes, start, ending)
  return nil if start > ending
  mid = (start + ending) / 2
  node = nodes[mid]
  node.left = build_balanced_bst(nodes, start, mid - 1)
  node.right = build_balanced_bst(nodes, mid + 1, ending)
  node
end

def create_tree_from_list(lst)
  return if lst.empty?
  root = TreeNode.new(lst[0])
  queue = [root]
  i = 1
  while i < lst.size
    node = queue.shift
    unless lst[i].nil?
      node.left = TreeNode.new(lst[i])
      queue << node.left
    end
    i += 1
    unless i >= lst.size || lst[i].nil?
      node.right = TreeNode.new(lst[i])
      queue << node.right
    end
    i += 1
  end
  root
end

tree1 = create_tree_from_list([1, nil, 2, nil, 3, nil, 4])
balanced_tree = balance_bst(tree1)
p balanced_tree
