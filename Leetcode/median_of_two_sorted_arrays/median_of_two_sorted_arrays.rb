# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  merged_array = (nums1 + nums2)
  (merged_array.sum.to_f / merged_array.count.to_f)
end


p find_median_sorted_arrays([1,3], [2])
p find_median_sorted_arrays([1,2], [3,4])
