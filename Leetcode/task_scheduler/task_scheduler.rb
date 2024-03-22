# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
  count = 0
  hash = Hash.new(0)
  tasks.each { |task| hash[task] += 1 }
  wait = (n+1) - hash.size
  until hash.empty? do
    hash.sort.map do |k,v|
      hash[k] -= 1
      hash.delete(k) if hash[k] == 0
      count += 1
    end
    count += wait if hash.size > 0 && wait > 0
  end
  count
end

p least_interval(["A","A","A","B","B","B"], 2)
p least_interval(["A","A","A","B","B","B"], 0)
p least_interval(["A","A","A", "B","B","B"], 3)
