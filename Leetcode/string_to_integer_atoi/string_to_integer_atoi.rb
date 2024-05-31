# @param {String} s
# @return {Integer}
def my_atoi(s)
  require 'pry'; binding.pry
end

# p my_atoi("42") == 42
p my_atoi(" -042") == -42
# p my_atoi("1337c0d3") == 1337
# p my_atoi("0-1") == 0
# p my_atoi("words and 987") == 0
