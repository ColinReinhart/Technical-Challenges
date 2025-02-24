def most_profitable_path(edges, bob, amount)
  # Step 1: Build adjacency list (Tree Representation)
  tree = Hash.new { |h, k| h[k] = [] }
  edges.each { |a, b| tree[a] << b; tree[b] << a }

  # Step 2: Find Bob's path to 0
  bob_time = {}
  find_bob_path(tree, bob, bob_time)

  # Step 3: DFS for Alice, maximize income
  max_income = [-Float::INFINITY]  # ✅ Use an array for in-place mutation
  alice_dfs(tree, 0, -1, 0, 0, bob_time, amount, max_income)

  max_income[0]  # ✅ Return the first element (max profit)
end

# Step 2: Find Bob's path from his position to node 0
def find_bob_path(tree, bob, bob_time)
  queue = [[bob, 0]] # [node, time]
  visited = { bob => true }

  until queue.empty?
    node, time = queue.shift
    bob_time[node] = time

    tree[node].each do |neighbor|
      unless visited[neighbor]
        visited[neighbor] = true
        queue << [neighbor, time + 1]
      end
    end
  end
end

# Step 3: DFS for Alice's optimal path
def alice_dfs(tree, node, parent, time, income, bob_time, amount, max_income)
  puts "Alice visiting node #{node}, time=#{time}, income=#{income}"  # Debugging

  # Determine Alice's net income at this node
  if !bob_time.key?(node) || time < bob_time[node]  # Alice arrives first
    income += amount[node]
  elsif time == bob_time[node]  # Alice and Bob arrive together
    income += amount[node] / 2
  end

  puts "After node #{node}, income=#{income}"  # Debugging

  # If it's a leaf node, update max_income
  is_leaf = tree[node].size == 1 && node != 0
  if is_leaf
    max_income[0] = [max_income[0], income].max  # ✅ Fix: Only update the first element
    puts "Updated max_income at leaf node #{node}: #{max_income[0]}"  # Debugging
  end

  # **Sort child nodes based on highest `amount` to ensure Alice follows the best path**
  sorted_children = tree[node].select { |neighbor| neighbor != parent }
                              .sort_by { |neighbor| -amount[neighbor] }

  # Continue DFS only in sorted order
  sorted_children.each do |neighbor|
    alice_dfs(tree, neighbor, node, time + 1, income, bob_time, amount, max_income)
  end
end

# ✅ Example Test Cases
p most_profitable_path([[0,1],[1,2],[1,3],[3,4]], 3, [-2,4,2,-4,6]) # Expected: 6
p most_profitable_path([[0,1]], 1, [-7280,2350]) # Expected: -7280
