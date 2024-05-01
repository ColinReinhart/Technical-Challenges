# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
  if word.include?(ch)
    split = word.split('')
    answer = []
    split.each_with_index do |c, i|
      if c == ch
        answer << split[0..i].reverse
        answer << split[i+1..-1]
        return answer.join
      end
    end
  else
    return word
  end
end

p reverse_prefix("abcdefd", "d")
p reverse_prefix("xyxzxe", "z")
p reverse_prefix("abcd", "z")
