# simple method (no parameters)
def test1
  puts "testing"
end

# method with parameters
def test2(var1, var2)
  puts "var1 = #{var1}"
  puts "var2 = #{var2}"
end

test1
test2 "Hey", "bro"
# test2 "hey" -> error, wrong number of parameters

=begin
every method returns a value in ruby by default
the returned value will be the value of the last statement
=end
def test3
  i = 100
  j = 10
  k = 0
end

puts test3 # -> 0

# if no expression is given to be returned, nil will be the return value
# multiple values can also be returned
def test4
  i = 100
  j = 200
  k = 300
  return i, j, k
end

var = test4
puts var # -> 100 200 300

# ruby allows a variable number of parameters in methods
def sample(*test)
  puts "The number of params is #{test.length}"
  for i in 0...test.length
    puts "The parameters are #{test[i]}"
  end
end

sample "Zara", "6", "F" # -> 3
sample "Mac", "36", "M", "MCA" # -> 4

# methods defined outside of a class are private by default
# methods defined within a class are public by default
class Accounts
  # instance method that requires an object to be instantiated to call it
  def reading_charge
    20
  end

  # a class method (one that does not require object instantiation)
  # is declared as shown below
  def Accounts.return_date
    puts "Return books NOW!"
  end
end

# we can directly call this method without instantiating an Accounts object
Accounts.return_date # -> prints "Return books NOW!"

# alias statement
# alias allows u to give a method/global variable
# a different name that will point to the value/implementation at
# time of binding so that you can change the value/implementation
def method
  puts "hey"
end

alias method_alias method
method_alias # -> prints "hey"

# undef allows you to undefine a method
# undef cannot appear in the method body
undef method
# method -> interpreter error: undefined local var or method
