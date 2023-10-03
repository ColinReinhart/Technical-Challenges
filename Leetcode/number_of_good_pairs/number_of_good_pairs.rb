# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  pair_count = 0
  nums.each_with_index do |num, i|
    nums[i+1..-1].each do |n|
      if num == n
        pair_count += 1
      end
    end
  end
  pair_count
end

p num_identical_pairs([1,2,3,1,1,3])
