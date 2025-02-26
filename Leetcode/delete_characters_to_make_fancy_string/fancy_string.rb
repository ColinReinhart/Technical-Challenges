# @param {String} s
# @return {String}
def make_fancy_string(s)
  result = []
  repeat_count = 0
  previous_char = nil

  s.each_char do |char|
    if char == previous_char
      repeat_count += 1
    else
      repeat_count = 1
      previous_char = char
    end

    result << char if repeat_count < 3
  end

  result.join
end

p make_fancy_string("leeetcode") # "leetcode"
p make_fancy_string("aaabaaaa") # "aabaa"
p make_fancy_string("aab") # "aab"
