# @param {Integer} k
# @param {Integer} w
# @param {Integer[]} profits
# @param {Integer[]} capital
# @return {Integer}
def find_maximized_capital(k, w, profits, capital)
    length = profits.length
    cp_array = profits.map.with_index{ |ele, index| [ele, capital[index]]}
    cp_array.sort_by!{ |e| -e.first }
    total_capital = w
    tasks = 0
    return total_capital if total_capital < capital.min

    while tasks < k && cp_array.any?
        no_task_performed = true
       (0...(length - tasks)).each do |i|
            if cp_array[i].last <= total_capital
                total_capital += cp_array[i].first
                cp_array.delete_at(i)
                tasks += 1
                no_task_performed = false
                break
            end
       end
       break if no_task_performed
    end
    total_capital
end

p find_maximized_capital(2, 0, [1,2,3], [0,1,1]) # 4
p find_maximized_capital(3, 0, [1,2,3], [0,1,2]) # 6
