def num_islands(grid)
  return 0 if grid.empty?

  @grid = grid
  @rows = grid.length
  @cols = grid[0].length
  islands_count = 0

  (0...@rows).each do |i|
    (0...@cols).each do |j|
      if @grid[i][j] == '1'
        islands_count += 1
        dfs(i, j)
      end
    end
  end

  islands_count
end

def dfs(row, col)
  return if row < 0 || col < 0 || row >= @rows || col >= @cols || @grid[row][col] == '0'

  @grid[row][col] = '0'

  dfs(row + 1, col)
  dfs(row - 1, col)
  dfs(row, col + 1)
  dfs(row, col - 1)
end

p num_islands([
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
])

p num_islands([
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
])
