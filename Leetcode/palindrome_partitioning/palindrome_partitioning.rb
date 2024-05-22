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

  (0...s.length).each do |start_index|
    (start_index + 1..s.length).each do |end_index|
      if arr[start_index..end_index].join('').is_palindromic? && arr[end_index + 1] != nil
        temp << arr[start_index..end_index].join('')
        arr[end_index + 1.. -1].each { |x| temp << x }
        output << temp
        temp = []
      end
    end
  end
  output
end


p partition("a")
p partition("aab")
