# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_distance_pair(nums, k)
  pair_dists = []

  nums.each_with_index do |n,i|
    nums[i+1..-1].each do |num|
      pair_dists << (n - num).abs
    end
  end
  pair_dists.sort[k-1]
end

p smallest_distance_pair([1,3,1], 1) #0
p smallest_distance_pair([1,1,1], 2) #0
p smallest_distance_pair([1,6,1], 3) #5
