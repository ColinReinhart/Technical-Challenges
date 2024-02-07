# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  split = s.split('')
  split.each_with_index do |char, indx|
    return indx unless split[indx+1..-1].include?(char) || split[0...indx].include?(char)
  end
  return -1
end

p first_uniq_char("leetcode")
p first_uniq_char("loveleetcode")
p first_uniq_char("aabb")
