# @param {String} s
# @return {String[][]}
def partition(s)
  output = []
  palindromic_substrings = []
  arr = s.split('')
  temp = []
  arr.each { |x| temp << x }
  output << temp
  temp = []

  def is_palindromic?
    if self == self.reverse
      true
    else
      false
    end
  end

  if s.is_palindromic? && s.length > 1
    output << [s]
  end

  (0...s.length).each do |start_index|
    (start_index + 1..s.length).each do |end_index|
      if arr[start_index..end_index].join('').is_palindromic?
        if start_index > 0
          arr[0..start_index -1].each { |x| temp << x }
        end
        temp << arr[start_index..end_index].join('')
        if end_index < arr.length
         arr[end_index + 1.. -1].each { |x| temp << x }
        end
        output << temp
        temp = []
      end
    end
  end
  output.uniq
end


# p partition("a")
# p partition("aab")
# p partition("bb")
# p partition("cdd")
p partition("cbbbcc")
