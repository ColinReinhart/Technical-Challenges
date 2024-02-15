def permutation(str)
  @split = str.split('')
  @n = @split.count - 1
  @arr = [str]
  @size = @split.count

  if str.length < 2
    arr << str
    return str
  end

  def modify_and_check(split, n, size)
    i = n
    (size - 1).times do
      split.insert(i -1, split[i])
      split.delete_at(i + 1)
      @arr << split.join
      i -= 1
    end
    if n > -1
      @n -= 1
      split.insert(n + 1, split[i])
      split.delete_at(i)
      require 'pry'; binding.pry
      modify_and_check(@split, @n, @size)
    else
      return @arr.uniq
    end
  end
  modify_and_check(@split, @n, @size)
  @arr
end

# p permutation('abc')
p permutation('aabc')
