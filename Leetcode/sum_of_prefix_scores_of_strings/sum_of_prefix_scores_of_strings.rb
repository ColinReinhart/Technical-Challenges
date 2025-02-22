class TrieNode
  attr_accessor :children, :count

  def initialize
    @children = {}
    @count = 0
  end
end

class Trie
  def initialize
    @root = TrieNode.new
  end

  # Insert word into Trie and update prefix counts
  def insert(word)
    node = @root
    word.chars.each do |char|
      node.children[char] ||= TrieNode.new
      node = node.children[char]
      node.count += 1  # Increment count at this prefix
    end
  end

  # Get prefix score for a word
  def get_prefix_score(word)
    node = @root
    score = 0
    word.chars.each do |char|
      return 0 unless node.children[char]
      node = node.children[char]
      score += node.count
    end
    score
  end
end

def sum_prefix_scores(words)
  trie = Trie.new

  # Step 1: Insert all words into Trie
  words.each { |word| trie.insert(word) }

  # Step 2: Compute prefix scores
  words.map { |word| trie.get_prefix_score(word) }
end

p sum_prefix_scores(["abc","ab","bc","b"]) #[5,4,3,2]
p sum_prefix_scores(["abcd"]) #[4]
