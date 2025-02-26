# @param {Integer[]} arr
# @return {Integer}
def num_of_subarrays(arr)
  mod = 10**9 + 7
  odd_count = 0
  even_count = 1
  prefix_sum = 0
  result = 0

  arr.each do |num|
    prefix_sum += num

    if prefix_sum.odd?
      result += even_count
      odd_count += 1
    else
      result += odd_count
      even_count += 1
    end

    result %= mod
  end

  result
end

p num_of_subarrays([1,3,5]) #4
p num_of_subarrays([2,4,6]) #0
