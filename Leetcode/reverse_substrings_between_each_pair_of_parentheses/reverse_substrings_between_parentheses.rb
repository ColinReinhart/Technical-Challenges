# @param {String} s
# @return {String}
def reverse_parentheses(s)
  @wip = s.split('')
  @left = 0
  @right = 0

  def put_my_thang_down_flip_it_and_reverse_it(s)
    @wip.each_with_index do |x,i|
      if x == ('(')
        @left = i
      elsif x == (')')
        @right = i
        break
      end
    end

    @wip[@left..@right] = @wip[@left+1..@right-1].reverse
  end

  while @wip.include?('(')
    put_my_thang_down_flip_it_and_reverse_it(@wip)
  end

  @wip.join
end

# p reverse_parentheses("(abcd)")
p reverse_parentheses("(u(love)i)")
# p reverse_parentheses("(ed(et(oc))el)")
