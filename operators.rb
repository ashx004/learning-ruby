=begin
ruby supports many of the typical operators in other languages

assume a = 20, b = 10

then:

arithmetic operators
* a + b -> 30
* a - b -> 10
* a * b -> 200
* a / b -> 2
* a % b -> 0
* a ** b -> 20^10

comparison operators:
* a == b -> false
* a != b -> true
* a > b -> true
* a < b -> false
* a >= b -> true
* a <= b -> false
* a <=> b -> 1 (0 if a = b, 1 if a < b, -1 if a > b)

assignment operators:
* =   -> assigns right side to left side (c = a + b)
* +=  -> assigns AND adds (c += 4 -> c = c + 4)
* -=  -> assigns AND subtracts
* *=  -> assigns AND multiplies
* /=  -> assigns AND divides
* %=  -> assigns AND module divides
* **= -> assigns AND exponentiates

bitwise operators:
* &  -> binary AND operator
* |  -> binary OR operator
* ^  -> binary XOR operator
* ~  -> binary ones complement (unary)
* << -> binary left shift operator
* >> -> binary right shift operator

logical operators:
* and (or &&)          -> a and b == true if a is true and b is true
* or (or ||)           -> a or b == true if a is true or b is true
* ! (or not)           -> !a == false if a is true, true otherwise

ternary operator:
?: conditional operator
if condition is true ? then value X : otherwise value Y

range operators:
* ..  -> creates an inclusive range on the end
* ... -> creates an exclusive range on the end

defined? operator:
defined? variable -> true if variable is initialized
defined? method -> true if method is defined
=end
