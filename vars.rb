$global_variable = 10 # global var
class Class1
  def print_global
    puts "Global variable in Class1 is #$global_variable" # a class can access it because it is global scope
  end
end

class Class2
  def print_global
    puts "Global variable in Class2  is #$global_variable" # it can be accessed here too
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global

# instance vars
class Customer
  @@number_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  def display_details()
    puts "Customer id is #@cust_id"
    puts "Customer name is #@cust_name"
    puts "Customer addr is #@cust_addr"
  end

  def total_number_of_customers()
    @@number_of_customers += 1
    puts "Total number of customers: #@@number_of_customers"
  end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

cust1.display_details()
cust2.display_details()
cust1.total_number_of_customers() # prints 1
cust2.total_number_of_customers() # prints 2

class Example
  # constants are always declared in ALL_CAPS
  # these are also local variables
  VAR1 = 100
  VAR2 = 200
  def show
    puts "Value of first constant is #{VAR1}"
    puts "Value of second constant is #{VAR2}"
  end
end

obj = Example.new()
obj.show

=begin
there are some special variables that behave like constants rather than local variables
* self     -> the receiver object of the current method
* true     -> value representing true
* false    -> value representing false
* nil      -> value representing undefined
* __FILE__ -> the name of the current source file (i.e. for this file, "vars.rb")
* __LINE__ -> the current line number in the source file
=end

# arrays in ruby hold references to object rather than only objects of a certain type
# this means that ruby arrays are heterogenous in type
arr1 = [ "fred", 10, 3.14, "String", 'last element', ]
arr1.each do |i|
  puts i
end

# a hash is like a dictionary (key-value pairs)
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
  print key, " is ", value, "\n"
end

# a range is an interval set of values across which something iterates over
# a range in the form of start..end run from start to the end, inclusively
# a range in the form of start...end run from start to the end, exclusively
(10..15).each do |n|
  print n, ' ' # prints 10 11 12 13 14 15
end
