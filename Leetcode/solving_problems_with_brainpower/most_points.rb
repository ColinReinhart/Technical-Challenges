# @param {Integer[][]} questions
# @return {Integer}
def most_points(questions)
  n = questions.length
  dp = Array.new(n + 1, 0)

  (n - 1).downto(0) do |i|
    points, brainpower = questions[i]
    skip = dp[i + 1]
    solve = points + dp[[i + brainpower + 1, n].min]
    dp[i] = [skip, solve].max
  end

  dp[0]
end

p most_points([[3,2],[4,3],[4,4],[2,5]]) #5
p most_points([[1,1],[2,2],[3,3],[4,4],[5,5]]) #7
