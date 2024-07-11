# @param {String} s
# @return {String}
def reverse_parentheses(s)
  wip = s.chars

  def put_my_thang_down_flip_it_and_reverse_it(wip)
    left = wip.rindex('(')
    right = wip.index(')')
    wip[left..right] = wip[left+1...right].reverse
  end

  while wip.include?('(')
    put_my_thang_down_flip_it_and_reverse_it(wip)
  end

  wip.join
end

p reverse_parentheses("(abcd)")
p reverse_parentheses("(u(love)i)")
p reverse_parentheses("(ed(et(oc))el)")
