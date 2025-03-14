# @param {Integer[]} candies
# @param {Integer} k
# @return {Integer}
def maximum_candies(candies, k)
  left = 1
  right = candies.max
  result = 0

  while left <= right
    mid = (left + right) / 2

    total = candies.sum { |candy| candy / mid }

    if total >= k
      result = mid
      left = mid + 1
    else
      right = mid - 1
    end
  end

  result
end

p maximum_candies([5,8,6], 3) #5
p maximum_candies([2,5], 11) #0
