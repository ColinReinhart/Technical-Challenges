# @param {String} s
# @return {String}
def make_fancy_string(s)
  chars = s.chars
  indices = []

  chars.each_with_index do |c,i|
    if c == chars[i+1]
      if c == chars[i+2]
        indices << i
      end
    end
  end
  indices.reverse.each { |x| chars.delete_at(x) }

  chars.join('')
end

p make_fancy_string("leeetcode") # "leetcode"
p make_fancy_string("aaabaaaa") # "aabaa"
p make_fancy_string("aab") # "aab"
