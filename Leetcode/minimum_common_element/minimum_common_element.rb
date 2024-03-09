def get_common(nums1, nums2)
  common = []
  nums1.each do |num|
    nums2.each do |n|
      if n == num
        common << n
      end
    end
  end
  common.min
end

p get_common([1,2,3], [2,4])
p get_common([1,2,3,6], [2,3,4,5])


# common << nums1.each { |num| nums2.each { |n| n == num ? n : 0}}
