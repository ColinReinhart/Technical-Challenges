# @param {String} s
# @param {Integer} k
# @return {Integer}
def min_operations(s, k)
  n = s.length
  z = s.count('0')
  return 0 if z == 0

  # Distance to each zero-count
  dist = Array.new(n + 1, -1)

  # DSU "next unvisited" for even and odd states.
  # parent_even[i] is meaningful for even i; parent_odd[i] for odd i.
  # When a state i is visited, we "remove" it by linking it to i+2.
  sentinel = n + 2
  parent_even = Array.new(sentinel + 1) { |i| i }
  parent_odd  = Array.new(sentinel + 1) { |i| i }

  find = lambda do |parent, i|
    while parent[i] != i
      parent[i] = parent[parent[i]]
      i = parent[i]
    end
    i
  end

  remove = lambda do |parent, i|
    nxt = i + 2
    nxt = sentinel if nxt > n
    parent[i] = find.call(parent, nxt)
  end

  # Initialize BFS
  q = []
  head = 0
  dist[z] = 0
  q << z
  (z.even? ? remove.call(parent_even, z) : remove.call(parent_odd, z))

  while head < q.length
    x = q[head]
    head += 1
    d = dist[x]

    # Allowed a range
    l = [0, k - n + x].max
    r = [k, x].min
    next if l > r

    # Reachable x' range
    y_min = x + k - 2 * r
    y_max = x + k - 2 * l
    y_min = 0 if y_min < 0
    y_max = n if y_max > n

    parity = (x + k) & 1
    parent = (parity == 0) ? parent_even : parent_odd

    # Adjust start to match parity
    y = y_min
    y += 1 if (y & 1) != parity

    y = find.call(parent, y)
    while y <= y_max
      dist[y] = d + 1
      return dist[0] if y == 0
      q << y
      remove.call(parent, y)
      y = find.call(parent, y) # next unvisited of this parity
    end
  end

  -1
end

p min_operations("110", 1) #1
p min_operations("0101", 3) #2
p min_operations('101', 2) #-1