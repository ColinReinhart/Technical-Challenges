def permutation(str)
  @split = str.split('')
  @arr = []

  if str.length < 2
    arr << str
    return str
  end

  def modify_and_check(split)
    if @arr.include?(split.join)
      split.append(split[0])
      split.delete_at(0)
      if @arr.include?(split.join)
        require 'pry'; binding.pry
        return @arr
      else
        modify_and_check(split)
      end
    else
      @arr << split.join
      split.append(split[0])
      split.shift
      modify_and_check(split)
    end
  end
  modify_and_check(@split)
  @arr
end

# p permutation('abc')
p permutation('aabc')
