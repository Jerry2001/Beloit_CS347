#1
puts 'each'
arr = Array.new(16) {|i| rand(10)} 
cnt = 0
arr.each { |i| 
	p arr[cnt, 4] if (cnt % 4 == 0)
	cnt += 1
}
puts "\neach_slice"
arr.each_slice(4){|range| p range}

#2
class Tree
  attr_accessor :children, :node_name
  
  def initialize(children=[], name =[])
  	childrenName = []
    children.each do |parent, childHash|
    	childrenName.push(Tree.new(childHash, parent))
    end
    @node_name = name
    @children = childrenName
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  
  def visit(&block)
    block.call self
  end
end

a = {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 
	'uncle' => {'child 3' => {}, 'child 4' => {} } } }
ruby_tree = Tree.new(a)

puts "\nVisiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}

#3
puts "\nRegex"
def grep(file, p)
	puts "File name: #{file}. Pattern: #{p}"
	stdin = File.open(file, 'r')
	regex = Regexp.new(p)
	index = 0
	stdin.each_line do
		|line| puts "#{index}: #{line}" if regex =~ line
		index += 1
	end
end

grep('stdin2.inp', 'dummy')