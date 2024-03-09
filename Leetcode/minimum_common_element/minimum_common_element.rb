require 'set'

def get_common(nums1, nums2)
  set1 = nums1.to_set
  nums2.each do |num|
    return num if set1.include?(num)
  end
  return -1
end

p get_common([1,2,3], [2,4])
p get_common([1,2,3,6], [2,3,4,5])
