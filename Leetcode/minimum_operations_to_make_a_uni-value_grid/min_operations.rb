# @param {Integer[][]} grid
# @param {Integer} x
# @return {Integer}
def min_operations(grid, x)
  flat = grid.flatten

  base = flat[0] % x
  return -1 unless flat.all? { |val| val % x == base }

  normalized = flat.map { |val| val / x }

  median = normalized.sort[normalized.size / 2]

  normalized.sum { |val| (val - median).abs }
end

p min_operations([[2,4],[6,8]], 2) #4
p min_operations([[1,5],[2,3]], 1) #5
p min_operations([[1,2],[3,4]], 2) #-1
