# @param {String} order
# @param {String} s
# @return {String}
def custom_sort_string(order, s)
  output = []
  o_arr = order.split('')
  s_arr = s.split('')

  o_arr.each do |char|
    if s_arr.include?(char)
      s_arr.each do |c|
        if c == char
          output << c
        end
      end
    end
  end
  s_arr.sort.each do |char|
    if output.include?(char)
    else
      s_arr.sort.each do |c|
        if c == char
          output << char
        end
      end
    end
  end
  output.join
end

p custom_sort_string("cba", "abcd")
p custom_sort_string("bcafg", "abcd")
p custom_sort_string("kqep", "pekeq") == "kqeep"
p custom_sort_string("hucw", "utzoampdgkalexslxoqfkdjoczajxtuhqyxvlfatmptqdsochtdzgypsfkgqwbgqbcamdqnqztaqhqanirikahtmalzqjjxtqfnh") == "hhhhhuucccwaaaaaaaaabbdddddeffffggggiijjjjkkkkllllmmmmnnnoooopppqqqqqqqqqqqrsssttttttttvxxxxxyyzzzzz"
p custom_sort_string("hucw", "utzoampdgkalexslxoqfkdjoczajxtuhqyxvlfatmptqdsochtdzgypsfkgqwbgqbcamdqnqztaqhqanirikahtmalzqjjxtqfnh")
