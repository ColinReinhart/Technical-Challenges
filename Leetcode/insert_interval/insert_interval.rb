# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  @full = []
  @answer = []
  intervals.each do |int|
    arr = Array(int[0]..int[1])
    @full << arr
  end
  @full << full_new = Array(new_interval[0]..new_interval[1])
  @full = @full.sort
  def combine_overlap(arr)
    arr[1] == nil ? return @answer : 0 #This is where I left off 3:00 PM 3/17
    if !(arr[0] & arr[1]).empty?
      wip = arr[0] + arr[1]
      if !(wip & arr[2]).empty?
        @full.delete_at(0)
        @full.delete_at(0)
        @full.insert(0, wip.uniq)
        combine_overlap(@full)
      else
        @answer << arr[0]
        @full.shift
        require 'pry'; binding.pry
      end
    else
      @answer << arr[0]
      @full.shift
    end
  end
  until @full == []
    combine_overlap(@full)
  end
end

# p insert([[1,3],[6,9]], [2,5]) # [[1,5],[6,9]]
p insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8]) # [[1,2],[3,10],[12,16]]
# p insert([], [5,7]) # [[5,7]]
# p insert([[1,5]], [2,3]) # [[1,5]]
# p insert([[1,5]], [2,7]) # [[1,7]]
