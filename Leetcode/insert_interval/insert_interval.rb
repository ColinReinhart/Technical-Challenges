# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  full = []
  answer = []
  intervals.each do |int|
    arr = Array(int[0]..int[1])
    full << arr
  end
  full << full_new = Array(new_interval[0]..new_interval[1])
  full = full.sort
  full.each_with_index do |arr, i|
    if full[i+1] == nil
       full.each do |arr|
        answer << [arr[0], arr[-1]]
      end
    else
    arr.each do |num|
        if full[i+1].include?(num)
          new = full[i] + full[i+1]
          full << new.uniq
          full.delete_at(i+1)
          full.delete_at(i)
          full = full.sort
        else
        end
      end
    end
  end
  answer
end

p insert([[1,3],[6,9]], [2,5]) # [[1,5],[6,9]]
p insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8]) # [[1,2],[3,10],[12,16]]
# p insert([], [5,7]) # [[5,7]]
# p insert([[1,5]], [2,3]) # [[1,5]]
# p insert([[1,5]], [2,7]) # [[1,7]]
