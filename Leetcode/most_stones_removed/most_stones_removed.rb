# @param {Integer[][]} stones
# @return {Integer}
class UnionFind
  def initialize
    @parent = {}
    @rank = {}
  end

  def find(x)
    @parent[x] = x unless @parent.key?(x)
    @parent[x] = find(@parent[x]) if @parent[x] != x
    @parent[x]
  end

  def union(x, y)
    rootX = find(x)
    rootY = find(y)
    return if rootX == rootY

    if @rank[rootX].to_i > @rank[rootY].to_i
      @parent[rootY] = rootX
    elsif @rank[rootX].to_i < @rank[rootY].to_i
      @parent[rootX] = rootY
    else
      @parent[rootY] = rootX
      @rank[rootX] = @rank[rootX].to_i + 1
    end
  end
end

def remove_stones(stones)
  uf = UnionFind.new

  stones.each do |x, y|
    uf.union(x, ~y)
  end

  unique_roots = stones.map { |x, y| uf.find(x) }.uniq.size
  stones.size - unique_roots
end

p remove_stones([[0,0],[0,1],[1,0],[1,2],[2,1],[2,2]])
p remove_stones([[0,0],[0,2],[1,1],[2,0],[2,2]])
