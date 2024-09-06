# @param {Integer[]} rolls
# @param {Integer} mean
# @param {Integer} n
# @return {Integer[]}
def missing_rolls(rolls, mean, n)
  m = rolls.length
  total_sum = mean * (n + m)
  current_sum = rolls.sum
  missing_sum = total_sum - current_sum

  if missing_sum < n || missing_sum > 6 * n
    return []
  end

  result = Array.new(n, missing_sum / n)
  remainder = missing_sum % n

  remainder.times { |i| result[i] += 1 }

  result
end

p missing_rolls([3,2,4,3], 4, 2) #[6,6]
p missing_rolls([1,5,6], 3, 4) #[2,3,2,2]
p missing_rolls([1,2,3,4], 6, 4) #[]
