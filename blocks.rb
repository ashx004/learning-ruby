=begin
a block consists of chunks of code
you assign a name to a block
the code in the block is always enclosed within braces
a block is always invoked from a function with the
same name as that block. This means that if you have a block with the name "test"
then you use the function "test" to invoke this block
you invoke a block by using the "yield" statement
=end

def test1
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test1 {
  puts "you are in the block"
}

# you can also pass parameters into a block
# you can do more than 1 parameter if you want
def test2
  yield 5
  puts "you are in the method"
  yield 100
end

test2 {
  |i| puts "you are in the block #{i}"
}

# preceding a method parameter with & allows you to pass a block to the method
# it must be the last parameter to the method
def test3(&block)
  block.call
end
test3 { puts "in a block now!" }

# BEGIN and END blocks

# code that runs before the program begins executing
BEGIN {
  puts "BEGIN code block"
}

# code that runs when then program is done executing
END {
  puts "END code block"
}

puts "MAIN code block now"
