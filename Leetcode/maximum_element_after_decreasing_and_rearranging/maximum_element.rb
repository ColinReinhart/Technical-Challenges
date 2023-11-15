def maximum_element_after_decrementing_and_rearranging(arr)
  array = arr.sort
  array[0] = 1
  array.map.with_index do |n, i|
    if array[i+1] == nil || array[i+1] - n <= 1
    else
      array[i+1] = n+1
    end
  end
  array.max
end

p maximum_element_after_decrementing_and_rearranging([2,2,1,2,1])
p maximum_element_after_decrementing_and_rearranging([100,1,1000])
p maximum_element_after_decrementing_and_rearranging([1,2,3,4,5])
