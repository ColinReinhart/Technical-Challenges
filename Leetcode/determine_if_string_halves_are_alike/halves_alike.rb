# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
  half = s.length / 2
  s[0..half-1].gsub(/[^aeiouAEIOU]/, '').length == s[half..-1].gsub(/[^aeiouAEIOU]/, '').length
end

p halves_are_alike("book") == true
p halves_are_alike("textbook") == false
