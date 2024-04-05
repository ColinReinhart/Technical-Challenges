# @param {String} s
# @return {String}
def make_good(s)
  split = s.split('')
  def make_good_helper(split)
    split.map.with_index do |char, index|
      if split[index + 1] == nil
        return split.join('')
      elsif char == split[index + 1]
        char
      elsif char == split[index + 1].downcase
        split.delete_at(index + 1)
        split.delete_at(index)
        make_good_helper(split)
      elsif char == split[index + 1].upcase
        split.delete_at(index + 1)
        split.delete_at(index)
        make_good_helper(split)
      else
        char
      end
    end
  end
  make_good_helper(split)
  split.join('')
end


p make_good("leEeetcode") # "leetcode"
p make_good("abBAcC") # ""
