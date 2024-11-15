# @param {Integer[]} arr
# @return {Integer}
def find_length_of_shortest_subarray(arr)
  n = arr.length

  # Step 1: Find the longest non-decreasing prefix
  left = 0
  left += 1 while left < n - 1 && arr[left] <= arr[left + 1]

  # If the entire array is sorted, no removal needed
  return 0 if left == n - 1

  # Step 2: Find the longest non-decreasing suffix
  right = n - 1
  right -= 1 while right > 0 && arr[right - 1] <= arr[right]

  # Step 3: Start with removing everything between prefix and suffix
  min_remove = [n - left - 1, right].min

  # Step 4: Use two pointers to merge prefix and suffix
  i = 0
  j = right
  while i <= left && j < n
    if arr[i] <= arr[j]
      min_remove = [min_remove, j - i - 1].min
      i += 1
    else
      j += 1
    end
  end

  min_remove
end

p find_length_of_shortest_subarray([1,2,3,10,4,2,3,5]) #3
p find_length_of_shortest_subarray([5,4,3,2,1]) #4
p find_length_of_shortest_subarray([1,2,3]) #0
