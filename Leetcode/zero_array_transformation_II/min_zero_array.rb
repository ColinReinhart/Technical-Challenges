# @param {Integer[]} nums
# @param {Integer[][]} queries
# @return {Integer}
def min_zero_array(nums, queries)
  k = 0

  def is_zero_array(arr)
    arr.each { |num| return false if num != 0 }
    return true
  end

  return 0 if is_zero_array(nums)

  queries.each do |l, r, val|
    (l..r).each do |i|
      nums[i] = [nums[i] - val, 0].max
    end

    k += 1

    return k if is_zero_array(nums)
  end

  -1
end

p min_zero_array([2,0,2], [[0,2,1],[0,2,1],[1,1,3]]) #2
p min_zero_array([4,3,2,1],  [[1,3,2],[0,2,1]]) #-1
p min_zero_array([0],  [[0,0,2],[0,0,4],[0,0,4],[0,0,3],[0,0,5]]) #0
