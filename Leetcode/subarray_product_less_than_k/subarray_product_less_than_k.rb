  # @param {Integer[]} nums
  # @param {Integer} k
  # @return {Integer}
  def num_subarray_product_less_than_k(nums, k)
    return 0 if k <= 1

    product = 1
    count = left = 0

    nums.each_with_index do |num, right|
      product *= num

      while product >= k
        product /= nums[left]
        left += 1
      end

      count += right - left + 1
    end
    count
  end

p num_subarray_product_less_than_k([10, 5, 2, 6], 100)
p num_subarray_product_less_than_k([1, 2, 3], 0)
p num_subarray_product_less_than_k([10,9,10,4,3,8,3,3,6,2,10,10,9,3], 19)
