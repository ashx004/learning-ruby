=begin
false and nil evaluate to false
everything else evaluates to true
=end

x = 1
if x > 2
  puts "x is greater than 2"
elsif x <= 2 and x != 0
  puts "x is 1"
else
  puts "I cant guess the number"
end

$debug = 1
print "debug\n" if $debug # the condition is after the code

# unless keyword shows the condition we dont want to see
a = 1
unless a >= 2 # this condition is met
  puts "a is less than 2"
else # this condition is not met
  puts "x is greater than 2"
end

$var = 1
print "1 -- value is set\n" if $var # prints
print "2 -- value is set\n" unless $var # doesnt print

$var = false
print "3 -- value is set\n" unless $var # prints

$age = 5
case $age # similar to a switch statement in other languages
when 0 .. 2
  puts "baby"
when 3 .. 5
  puts "little child"
when 7 .. 12
  puts "child"
when 13 .. 18
  puts "youth"
else
  puts "adult"
end
