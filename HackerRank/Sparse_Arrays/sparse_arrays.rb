def matchingStrings(strings, queries)
    hash = {}
    answer_array = []
    strings.each do |s|
        if hash.include?(s) == false
            hash[s] = 1
        else
            hash[s] += 1
        end
    end
    queries.each do |q|
        if hash.include?(q)
            answer_array << hash[q]
        else
            answer_array << 0
        end
    end
    answer_array
end

p matchingStrings(["aba", "baba", "aba", "xzxb"], ["aba", "xzxb", "ab"])
