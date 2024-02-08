# @param {Integer} n
# @return {Integer}
def num_squares(n)
  results = []
  squares = (1..11).map { |x| x * x }
  less_than = []
  squares.each { |x| less_than << x if x <= n }
  def find_combinations(arr, target, results, index, current_combination)
    if target == 0
      results << current_combination.dup
      return
    end

    return if target < 0 || index >= arr.length

    current_combination << arr[index]
    find_combinations(arr, target - arr[index], results, index, current_combination)

    find_combinations(arr, target - arr[index], results, index, current_combination)

    current_combination.pop
    find_combinations(arr, target, results, index + 1, current_combination)

  end
  find_combinations(less_than, n, results, 0, [])
  unique = results.uniq
  sorted = unique.sort_by { |array| array.length }
  # require 'pry'; binding.pry
  sorted.shift.count
end

p num_squares(12)
p num_squares(13)
p num_squares(17)
p num_squares(1)
p num_squares(20)
