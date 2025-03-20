# @param {Integer} n
# @param {Integer[][]} edges
# @param {Integer[][]} query
# @return {Integer[]}
class UnionFind
  attr_accessor :nodes, :sizes
  attr_reader :max_set_size, :component_AND_val

  def initialize(node_keys=[])
    @nodes = {}
    @sizes = {}
    @component_AND_val = {}
    node_keys.each { |i| root(i) }
  end

  def root(i)
    nodes[i] ||= i; sizes[i] ||= 1;  @component_AND_val[i] ||= (2**18-1)

    while nodes[i] != i
      nodes[i] = nodes[nodes[i]]
      i = nodes[i]
    end
    i
  end

  def size_for(i)
    sizes[root(i)]
  end

  def union(i, j, w)
    root_of_i = root(i)
    root_of_j = root(j)

    return component_AND_val[root_of_i]&=w if root_of_i == root_of_j

    if sizes[root_of_j] > sizes[root_of_i]
      nodes[root_of_i] = root_of_j
      sizes[root_of_j] += sizes[root_of_i]
      component_AND_val[root_of_j] = (component_AND_val[root_of_j] & component_AND_val[root_of_i] & w)
    else
      nodes[root_of_j] = root_of_i
      sizes[root_of_i] += sizes[root_of_j]
      component_AND_val[root_of_i] = (component_AND_val[root_of_j] & component_AND_val[root_of_i] & w)
    end
  end
end

def minimum_cost(n, edges, query)
  uf = UnionFind.new((0...n).to_a)
  edges.each {|x,y,w| uf.union(x,y,w) }
  query.map { |u,v| (uf.root(u) != uf.root(v) )? -1 : uf.component_AND_val[uf.root(u)] }
end

p  minimum_cost(5, [[0,1,7],[1,3,7],[1,2,1]], [[0,3],[3,4]]) #[1,-1]
p  minimum_cost(3, [[0,2,7],[0,1,15],[1,2,6],[1,2,1]], [[1,2]]) #[0]
