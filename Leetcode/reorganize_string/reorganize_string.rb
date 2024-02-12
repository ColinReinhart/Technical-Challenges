# @param {String} s
# @return {String}
def reorganize_string(s)
  char_counts = s.each_char.each_with_object(Hash.new(0)) do |char, counts|
        counts[char] += 1
    end

    result = []
    prev = nil
    (0...s.length).each do |_index|
        sorted = char_counts.sort_by { |k, v| v }.reverse!
        next_char, _next_char_count = sorted.find { |k, v| k != prev && !v.zero? }
        return '' if next_char.nil?

        char_counts[next_char] -= 1
        prev = next_char
        result << next_char
    end

    return result.join
end

p reorganize_string("aab")
p reorganize_string("aaab")
