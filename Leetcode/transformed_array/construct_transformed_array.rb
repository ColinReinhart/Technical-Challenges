# @param {Integer[]} nums
# @return {Integer[]}
def construct_transformed_array(nums)
  n = nums.length
  res = Array.new(n)
  (0...n).each do |i|
    step = nums[i]
    if step == 0
        res[i] = 0
    else
      j = (i + step) % n
      res[i] = nums[j]
    end
  end

  res
end

p construct_transformed_array([3,-2,1,1]) == [1,1,1,3]
p construct_transformed_array([-1,4,-1]) == [-1,-1,4]