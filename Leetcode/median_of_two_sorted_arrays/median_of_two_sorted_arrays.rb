# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  removed = 0
  while(nums1.length > 0 || nums2.length > 0)
      current = if nums2.length == 0
          nums1.shift
      elsif nums1.length == 0
          nums2.shift
      elsif nums1.first <= nums2.first
          nums1.shift
      else
          nums2.shift
      end

    removed +=1
    remaining = nums1.length + nums2.length

    if removed == remaining
      last = current
    elsif removed > remaining
      last ||= current
      return (current+last) /2.0
    end
  end
end


p find_median_sorted_arrays([1,3], [2])
p find_median_sorted_arrays([1,2], [3,4])
