# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  if s.match(p)
    s.match(p)[0] == s
  else
    false
  end
end

p is_match("aa", "a")
p is_match("aa", "a*")
p is_match("ab", ".*")
