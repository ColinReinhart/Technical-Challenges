# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  top_nums = Hash.new

  nums.each do |num|
    if top_nums[num] == nil
      top_nums[num] = 1
    else
      top_nums[num] += 1
    end
  end
  top_nums.sort_by { |number, count| count }.pop(k)
  answer = top_nums.sort_by { |number, count| count }.pop(k)
  return answer.to_h.keys.reverse
end

p top_k_frequent([1,1,1,2,2,3], 2)

p top_k_frequent([1], 1)
p top_k_frequent([1,6,9,5,4,3,1,7,8,9,4,5,6,12,11,6,9,], 5)
