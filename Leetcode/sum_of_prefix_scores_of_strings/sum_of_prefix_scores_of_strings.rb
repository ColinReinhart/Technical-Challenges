# @param {String[]} words
# @return {Integer[]}
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

  # Insert a word into the Trie and increment the count for each prefix
  def insert(word)
    node = @root
    word.each_char do |char|
      node.children[char] ||= TrieNode.new
      node = node.children[char]
      node.count += 1
    end
  end

  # Get the sum of prefix scores for a word
  def get_prefix_score(word)
    score = 0
    node = @root
    word.each_char do |char|
      node = node.children[char]
      score += node.count
    end
    score
  end
end

# Main function
def sum_prefix_scores(words)
  trie = Trie.new
  words.each { |word| trie.insert(word) }

  # Calculate the sum of prefix scores for each word
  words.map { |word| trie.get_prefix_score(word) }
end

p sum_prefix_scores(["abc","ab","bc","b"]) #[5,4,3,2]
p sum_prefix_scores(["abcd"]) #[4]
