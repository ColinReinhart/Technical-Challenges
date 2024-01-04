def max_product_difference(nums)
  (nums.sort[-1] * nums.sort[-2]) - (nums.sort[0] * nums.sort[1])
end

p max_product_difference([5,6,2,7,4])
p max_product_difference([4,2,5,9,7,4,8])
