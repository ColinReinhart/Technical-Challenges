# @param {String} s
# @return {Integer}
def my_atoi(s)
  s.strip!

  return 0 if s.empty?

  sign = 1
  if s[0] == '-'
    sign = -1
    s = s[1..-1]
  elsif s[0] == '+'
    s = s[1..-1]
  end

  num = 0
  s.each_char do |char|
    break unless char =~ /\d/
    num = num * 10 + char.to_i
  end

  num *= sign

  int_min = -2**31
  int_max = 2**31 - 1
  if num < int_min
    num = int_min
  elsif num > int_max
    num = int_max
  end

  num
end

p my_atoi("42") == 42
p my_atoi(" -042") == -42
p my_atoi("1337c0d3") == 1337
p my_atoi("0-1") == 0
p my_atoi("words and 987") == 0
