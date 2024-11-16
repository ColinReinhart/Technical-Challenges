# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def results_array(nums, k)
  left = 0
  right = k - 1
  answers = []

  until right == nums.count
    if nums[left..right] == (nums[left..right].min..nums[left..right].max).to_a.sort
      answers << nums[left..right].max
    else
      answers << -1
    end
    left += 1
    right += 1
  end

  answers
end

p results_array([1,2,3,4,3,2,5], 3) #[3,4,-1,-1,-1]
p results_array([2,2,2,2,2], 4) #[-1,-1]
p results_array([3,2,3,2,3,2], 2) #[-1,3,-1,3,-1]
p results_array([1,3,4], 2) #[-1,4]
