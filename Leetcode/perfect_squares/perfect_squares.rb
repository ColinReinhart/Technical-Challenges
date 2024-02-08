# @param {Integer} n
# @return {Integer}
def num_squares(n)
  count = 0
  shortest_sum = []
  squares = (1..11).map { |x| x * x }
  less_than = []
  squares.each { |x| less_than << x if x < n }
  def find_combinations(arr, num)
    require 'pry'; binding.pry
  end
  find_combinations(less_than, n)
end

p num_squares(12)
# p num_squares(13)
