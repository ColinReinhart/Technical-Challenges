def remove_duplicate_letters(s)
  arr = s.split("")
  arr.map do |c|
    arr[1..-1].each do |x|
      if c == x
        require 'pry'; binding.pry
        arr.shift
      end
    end
  end
  require 'pry'; binding.pry
end

p remove_duplicate_letters("bcabc")
# p remove_duplicate_letters("cbacdcbc")
