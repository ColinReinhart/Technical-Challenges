require 'set'

def intersection(nums1, nums2)
  matched = []
  set1 = nums1.to_set
  set2 = nums2.to_set
  set1.each { |num| matched << num if set2.include?(num) }
  matched
end

p intersection([1,2,2,1], [2,2])
p intersection([4,9,5], [9,4,9,8,4])
