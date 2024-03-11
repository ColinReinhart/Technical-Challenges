# @param {String} order
# @param {String} s
# @return {String}
def custom_sort_string(order, s)
  output = []
  o_arr = order.split('')
  s_arr = s.split('')
  o_arr.map { |x| s_arr.include?(x) ? output << x : 0 }
  s_arr.map { |x| output.include?(x) ? 0 : output << x }
  output.join
end

p custom_sort_string("cba", "abcd")
p custom_sort_string("bcafg", "abcd")
