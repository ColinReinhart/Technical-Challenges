# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_happy_string(n, k)
  set = ["a", "b", "c"]

  wip = set.repeated_permutation(n).select { |arr| arr.each_cons(2).none? { |a, b| a == b } }.map(&:join).sort

  wip[k-1] || ""
end

p get_happy_string(1, 3) #"c"
p get_happy_string(1, 4) #""
p get_happy_string(3, 9) #"cab"
