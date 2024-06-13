# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  wip = []
  split = s.split('')
  p.split("").each_with_index do |c,i|
    if c == split[i]
      wip << c
    elsif c == "."
      wip << split[i]
    elsif c == "*"
      require 'pry'; binding.pry
    else
      require 'pry'; binding.pry
    end
  end
end

# p is_match("aa", "a")
# p is_match("aa", "a*")
p is_match("ab", ".*")
