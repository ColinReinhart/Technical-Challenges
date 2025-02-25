# @param {Integer[]} arr
# @return {Integer}
def num_of_subarrays(arr)
  counter = 0
  left = 0
  right = 1

  arr.each { |num| counter += 1 if num.odd? }

  until left == arr.length - 1 do
    counter += 1 if arr[left..right].sum.odd?
    if right < arr.length - 1
      right += 1
    else
      left += 1
      right = left + 1
    end
  end

  return counter
end

p num_of_subarrays([1,3,5]) #4
p num_of_subarrays([2,4,6]) #0
