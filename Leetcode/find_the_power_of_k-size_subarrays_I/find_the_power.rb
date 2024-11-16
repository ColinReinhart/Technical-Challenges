# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def results_array(nums, k)
  results = []

  (0..nums.size - k).each do |i|
    window = nums[i, k]
    min_val, max_val = window.min, window.max

    if window.sort == (min_val..max_val).to_a && window == window.sort
      results << max_val
    else
      results << -1
    end
  end

  results
end

p results_array([1,2,3,4,3,2,5], 3) #[3,4,-1,-1,-1]
p results_array([2,2,2,2,2], 4) #[-1,-1]
p results_array([3,2,3,2,3,2], 2) #[-1,3,-1,3,-1]
p results_array([1,3,4], 2) #[-1,4]
