#Fahim NoorAhmad
#mod7PA
class Huffman
	class Node

 		def initialize (char, count)
 			@char, @count = char, count
 			@left, @right, @encoding =  nil, nil, nil
 		end
 		attr_accessor :char, :count, :left, :right, :encoding
 	end
 
 	
 	def initialize (text)
 		@text = text
 		@top= tree(text)
 		@table = Hash.new
 		table()

 	def text
 		return @text
 	end

 	def table (tail, top )
 		tail, top = "", @top
 		
 		if (node.char != nil)
 			@table[node.char] = tail			
 		end
 		
 		table(tail + "1", node.right)
 		table(top  + "0", node.left )
 	end

 	def encode (text = nil)
 		text = text
 		encoding =""

		text.split("").each do |ch|
 			
 		if (@table[ch] != nil)
 			encoding = encoding + @table[ch]
 		end

		if (text == nil)
 			text = @text
 		end
	end
		return encoding
 	end

 	def decode(bit_string)
 		bit_string = bit_string.reverse
 		top_rst = @top
 		rst =""

 	while ( 0 < bit_string .length)
 		if (top_rst.char == nil)
 			if (bit_string [bit_string  -1] == "0")
 				top_rst = @top
 				bit_string.chop!

 				if (top_rst != nil)
 					rst = rst + top_rst
 					top_rst = @top
				end
 	
 				else 
 					top_rst = top_rst.right
 					bit_string .chop!

 					if (top_rst != nil)
 						rst = rst + top_rst.char
 						top_rst = @top
 					end
 				end
 			end
		end
 		return rst
 	end

 	def tree (text = nil)
 		text = text
 		tree = Array.new
 		hash = Hash.new

		text.split("").each do |ch|
 			if (hash[ch] == nil)
 				hash[ch] = 1
 			elsif 	
 				hash[ch] = hash[ch]+1
 			end
 		end
 		hash.sort_by { |key, val|val }.reverse.each do |key_val|
 		tree.push(Node.new(key_val[0], key_val[1]))
 	end
 	
 	while 1< tree.length
 		left = tree.pop
 		right = tree.pop
 		node = Node.new(nil, left.count + right.count)
 		node.left = left
 		node.right = right
 		tree.push(node)
 		tree = tree.sort_by {|node|node.count}.reverse
 	end
 	return tree.pop
 end	
end
end

tree = Huffman.new("asdfljk")
var = tree.encode()
puts var
var2 = tree.decode(var)
puts var2


