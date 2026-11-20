=begin
local variables are defined within a method. They are not available outside of the local scope.
Local variables begin with lowercase or _

instance variables are variables that belong to a specific instance of a class
meaning they change from instance to instance
instance variables are preceded with the @ sign -> @name

class variables are variables that belong to the class itself rather than a single instance
meaning they do NOT change from instance to instance (of the same class).
class variables are preceded with @@ -> @@name

global variables are variables that belong to the global scope of the program
meaning they are available across different classes and instances of objects
global variables are preceded with the $ sign -> $name
=end

class Customer
  # class variable
  @@number_of_customers  = 0

  # methods begin with the def keyword
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end # methods end with the end keyword
end # classes also end with the end keyword

class Sample
  def hello
    puts "Hello, Ruby!"
  end
end

# instantiating Customer objects
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Paul", "New Empire road, Khandala")
object = Sample.new
object.hello
