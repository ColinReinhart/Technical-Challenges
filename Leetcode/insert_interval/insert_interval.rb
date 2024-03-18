def insert(intervals, new_interval)
  if intervals.empty?
    return [new_interval]
  end

  full = []
  answer = []
  final_answer = []

  intervals.each do |int|
    arr = Array(int[0]..int[1])
    full << arr
  end

  full << full_new = Array(new_interval[0]..new_interval[1])
  full = full.sort

  until full.empty?
    arr = full.shift
    if answer.empty?
      answer << arr
    else
      last_interval = answer[-1]
      if last_interval.last < arr.first
        answer << arr
      else
        last_interval[-1] = [last_interval[-1], arr[-1]].max
      end
    end
  end

  answer.each do |arr|
    arr = [arr[0], arr[-1]]
    final_answer << arr
  end

  final_answer
end

p insert([[1,3],[6,9]], [2,5]) # [[1,5],[6,9]]
p insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8]) # [[1,2],[3,10],[12,16]]
p insert([], [5,7]) # [[5,7]]
p insert([[1,5]], [2,3]) # [[1,5]]
p insert([[1,5]], [2,7]) # [[1,7]]
