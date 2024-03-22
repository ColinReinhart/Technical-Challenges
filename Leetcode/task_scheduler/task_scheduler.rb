# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
  hash = { 'int' => n }
  arr = []
  tasks.each do |task|
    hash[task] = hash[task].nil? ? 1 : hash[task] + 1
  end
  until hash.empty? do
    hash.sort.map do |key, value|
      arr << key
      hash[key] -= 1
      if hash[key] == 0
        hash.delete(key)
      end
    end
  end
  arr.count
end

p least_interval(["A","A","A","B","B","B"], 2)
p least_interval(["A","A","A","B","B","B"], 0)
# p least_interval(["A","A","A","A","A","A","B","C","D","E","F","G"], 2)
