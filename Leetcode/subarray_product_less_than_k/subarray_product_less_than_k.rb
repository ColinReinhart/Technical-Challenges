  # @param {Integer[]} nums
  # @param {Integer} k
  # @return {Integer}
  def num_subarray_product_less_than_k(nums, k)
    return 0 if nums.min >= k
    arr = []
    k = k

    nums.each_with_index do |num, i|
      arr << [num]
      j = i + 1
      while j < nums.length
        arr << arr[-1] + [nums[j]] if arr[-1].inject(:*) * nums[j] < k
        j += 1
      end
    end

    arr.length
  end

p num_subarray_product_less_than_k([10, 5, 2, 6], 100)
p num_subarray_product_less_than_k([1, 2, 3], 0)
p num_subarray_product_less_than_k([10,9,10,4,3,8,3,3,6,2,10,10,9,3], 19)
