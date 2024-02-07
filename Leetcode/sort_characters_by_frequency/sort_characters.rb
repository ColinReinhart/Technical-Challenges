# @param {String} s
# @return {String}
def frequency_sort(s)
  wip = []
  split = s.split('')
  hash = Hash.new(0)
  split.each { |char| hash[char] += 1 }
  hash.sort_by { |k,v| -v }.each { |k, v| v.times { wip << k }}
  wip.join
end

p frequency_sort("tree")
p frequency_sort("cccaaa")
p frequency_sort("Aabb")
