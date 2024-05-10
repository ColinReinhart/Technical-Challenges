# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer[]}
def kth_smallest_prime_fraction(arr, k)
  hash = {}
  array = []
  floats = []
  wip = []
  sorted_values = []
  arr.each_with_index do |n, i|
    arr[i+1..-1].each do |num|
      array << [n, num]
    end
  end
  array.each do |frac|
    hash[frac] = (frac[0].to_f)/(frac[1].to_f)
  end
  hash.each do |k,v|
    floats << v
  end
  floats.sort.each do |fl|
    wip << hash.key(fl)
  end
  return wip[k-1]
end

p kth_smallest_prime_fraction([1,2,3,5], 3)
p kth_smallest_prime_fraction([1,7], 1)
