# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  first_unique = false
  split = s.split('')
  split.each_with_index do |char, indx|
    if split[indx+1..-1].include?(char) || split[0...indx].include?(char)

    else
      return indx
    end
  end
  return -1
end

p first_uniq_char("leetcode")
p first_uniq_char("loveleetcode")
p first_uniq_char("aabb")
