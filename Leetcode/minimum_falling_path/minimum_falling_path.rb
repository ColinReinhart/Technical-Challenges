def min_falling_path_sum(matrix)
  n = matrix.size
  dp = Array.new(n){Array.new(n)}

  dp[n-1] = matrix[n-1]

  (0..n-2).to_a.reverse.each do |row|
        (0..n-1).to_a.each do |col|
            dp[row][col] = matrix[row][col] + [
                dp[row + 1][col],
                dp[row + 1][[col - 1, 0].max],
                dp[row + 1][[col + 1, n - 1].min]
            ].min
        end
    end

    dp[0].min
end

p min_falling_path_sum([[2,1,3],[6,5,4],[7,8,9]])
