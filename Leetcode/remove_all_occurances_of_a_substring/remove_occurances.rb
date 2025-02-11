# @param {String} s
# @param {String} part
# @return {String}
def remove_occurrences(s, part)
  require 'pry'; binding.pry
end

p remove_occurrences("daabcbaabcbc", "abc") #"dab"
p remove_occurrences("axxxxyyyyb", "xy") #"ab"
