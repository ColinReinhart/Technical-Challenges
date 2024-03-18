# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  if intervals == []
    return [new_interval]
  end
  @full = []
  @answer = []
  @final_answer = []
  intervals.each do |int|
    arr = Array(int[0]..int[1])
    @full << arr
  end
  @full << full_new = Array(new_interval[0]..new_interval[1])
  @full = @full.sort
  def combine_overlap(arr)
    if arr[1] == nil
      if !(@answer[-1] & arr[0]).empty?
        @answer[-1] = (@answer[-1] + arr[0]).uniq
        @full.shift
      else
        @answer << arr[0]
        @full.shift
      end
    elsif !(arr[0] & arr[1]).empty?
      wip = arr[0] + arr[1]
      if arr[2] != nil && !(wip & arr[2]).empty?
        @full.delete_at(0)
        @full.delete_at(0)
        @full.insert(0, wip.uniq)
        combine_overlap(@full)
      else
        wip << arr[1]
        @answer << wip.flatten.uniq
        @full.shift
      end
    elsif @answer[-1] != nil && !(@answer[-1] & arr[0]).empty?
      @answer[-1] = (@answer[-1] << arr[0]).flatten.uniq
      @full.shift
    else
      # require 'pry'; binding.pry
      @answer << arr[0]
      @full.shift
    end
  end
  until @full == []
    combine_overlap(@full)
  end
  @answer.each do |arr|
    arr = [arr[0], arr[-1]]
    @final_answer << arr
  end
  @final_answer
end

p insert([[1,3],[6,9]], [2,5]) # [[1,5],[6,9]]
p insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8]) # [[1,2],[3,10],[12,16]]
p insert([], [5,7]) # [[5,7]]
p insert([[1,5]], [2,3]) # [[1,5]]
p insert([[1,5]], [2,7]) # [[1,7]]
