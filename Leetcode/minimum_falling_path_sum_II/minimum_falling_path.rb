# @param {Integer[][]} grid
# @return {Integer}
def min_falling_path_sum(grid)
  n = grid.size
  m = grid[0].size

  dp = Array.new(n) { Array.new(m, 0) }

  grid[0].each_with_index { |val, j| dp[0][j] = val }

  (1...n).each do |i|
    (0...m).each do |j|
      min_sum = Float::INFINITY
      (0...m).each do |k|
        min_sum = [min_sum, dp[i - 1][k]].min if k != j
      end
      dp[i][j] = grid[i][j] + min_sum
    end
  end

  dp[-1].min
end

p min_falling_path_sum([[1,2,3],[4,5,6],[7,8,9]])
p min_falling_path_sum([[7]])
