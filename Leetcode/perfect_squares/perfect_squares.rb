# @param {Integer} n
# @return {Integer}
def num_squares(n)
  squares = (1..Math.sqrt(n)).map { |x| x * x }

  dp = Array.new(n + 1, Float::INFINITY)
  dp[0] = 0

  (1..n).each do |i|
    squares.each do |square|
      break if square > i
      dp[i] = [dp[i], dp[i - square] + 1].min
    end
  end
  dp[n]
end

p num_squares(12)
p num_squares(13)
p num_squares(17)
p num_squares(1)
p num_squares(20)
