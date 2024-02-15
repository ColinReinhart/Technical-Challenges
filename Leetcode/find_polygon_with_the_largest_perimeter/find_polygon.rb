def largest_perimeter(nums)
  sorted = nums.sort
  if sorted.count < 3
    return -1
  else
    if sorted[-1] >= sorted[0...-1].sum
      sorted.delete_at(-1)
      largest_perimeter(sorted)
    else
      return sorted.sum
    end
  end
end

p largest_perimeter([5,5,5])
p largest_perimeter([1,12,1,2,5,50,3])
p largest_perimeter([5,5,50])



# def find_perimeter(nums)
#   sorted = nums.sort
#   if sorted.count < 3
#     return -1
#   else
#     if sorted[-1] > sorted[0...-1].sum
#       sorted.delete_at(-1)
#       find_perimeter(sorted)
#     else
#       return sorted.sum
#     end
#   end
# end
