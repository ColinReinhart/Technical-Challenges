# @param {Integer} n
# @return {Integer}
def binary_gap(n)
    binary_array = []
    left = 0
    right = 1
    biggest_gap = 0
    n.to_s(2).split('').each { |num| binary_array << num.to_i }
    until left == binary_array.length - 1
        if binary_array[left] == 1 && binary_array[right] == 1
            if right - left > biggest_gap
                biggest_gap = right - left
            end
            left = right
            right = left + 1
        elsif right < binary_array.length - 1
            right += 1
        else
            left += 1
        end
    end
    
    biggest_gap
end

p binary_gap(22) # 2
p binary_gap(8) # 0
p binary_gap(5) # 2