# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  matching_bracket = { ')' => '(', '}' => '{', ']' => '[' }

  s.each_char do |char|
    if matching_bracket.values.include?(char)
      stack.push(char)
    elsif matching_bracket.key?(char)
      return false if stack.empty? || stack.pop != matching_bracket[char]
    end
  end

  stack.empty?
end

p is_valid("()") #true
p is_valid("()[]{}") #true
p is_valid("(]") #false
