# @param {Integer[][]} grid1
# @param {Integer[][]} grid2
# @return {Integer}
def count_sub_islands(grid1, grid2)
  m, n = grid1.length, grid1[0].length

  # DFS function to traverse the islands
  def dfs(grid1, grid2, i, j)
    # Base cases: if out of bounds, or it's water in grid2, return true
    return true if i < 0 || j < 0 || i >= grid1.length || j >= grid1[0].length || grid2[i][j] == 0

    # Mark the cell as visited in grid2
    grid2[i][j] = 0

    # Check if this part of the island is also part of an island in grid1
    is_sub_island = grid1[i][j] == 1

    # Continue the DFS to the four directions
    is_sub_island &= dfs(grid1, grid2, i + 1, j)
    is_sub_island &= dfs(grid1, grid2, i - 1, j)
    is_sub_island &= dfs(grid1, grid2, i, j + 1)
    is_sub_island &= dfs(grid1, grid2, i, j - 1)

    # Return whether this is a sub-island
    is_sub_island
  end

  # Count the sub-islands
  count = 0
  (0...m).each do |i|
    (0...n).each do |j|
      # If there's land in grid2, we check if it's a sub-island
      if grid2[i][j] == 1
        count += 1 if dfs(grid1, grid2, i, j)
      end
    end
  end

  count
end

p count_sub_islands([[1,1,1,0,0],[0,1,1,1,1],[0,0,0,0,0],[1,0,0,0,0],[1,1,0,1,1]], [[1,1,1,0,0],[0,0,1,1,1],[0,1,0,0,0],[1,0,1,1,0],[0,1,0,1,0]])
#3
p count_sub_islands([[1,0,1,0,1],[1,1,1,1,1],[0,0,0,0,0],[1,1,1,1,1],[1,0,1,0,1]], [[0,0,0,0,0],[1,1,1,1,1],[0,1,0,1,0],[0,1,0,1,0],[1,0,0,0,1]])
#2
