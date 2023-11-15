def count_homogenous(s)
  arr = s.split('')
  count = 0
  new_arr = []
  skip = 0
  arr.each_with_index do | c, i |
    if skip == 0
    temp_arr = [c]
      arr[i+1..-1].each_with_index do | char, index |
        if c == char
          temp_arr << char
          skip += 1
          if index == 0
            new_arr << temp_arr
          end
        elsif c != char && temp_arr.count == 1
          new_arr << temp_arr
          require 'pry'; binding.pry
          new_arr << [char]
          break
        else
          break
        end
      end
    else
      skip -=1
    end
  end

  new_arr.each do |a|
    require 'pry'; binding.pry
    n = a.count
    count += n*(n+1)/2
  end

  count
end

p count_homogenous("abbcccaa")
# p count_homogenous("xy")
# p count_homogenous("zzzzz")
