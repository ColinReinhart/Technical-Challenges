# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_happy_string(n, k)
  chars = ["a", "b", "c"]
  result = []

  def backtrack(n, current, last_char, result)
    return if result.size >= @k

    if current.size == n
      result << current.dup
      return
    end

    ["a", "b", "c"].each do |char|
      next if char == last_char

      backtrack(n, current + char, char, result)
      return if result.size >= @k
    end
  end

  @k = k
  backtrack(n, "", "", result)

  result[k-1] || ""
end

p get_happy_string(1, 3) #"c"
p get_happy_string(1, 4) #""
p get_happy_string(3, 9) #"cab"
