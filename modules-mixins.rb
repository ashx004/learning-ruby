=begin
modules provide a namespace and prevent name clashes
modules implement the "mixin" facility

syntax:
module Idenitifer
  statement1
  statement2
  ..........
end

check trig.rb file and moral.rb
both of those files have a method called sin
there is no conflict since these methods belong to different namespaces

we can include/import code from these modules with the require keyword
=end

# tells ruby to search the current directory for the required files
$LOAD_PATH << '.'

require 'trig'
require 'moral'

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)

# you can embed a module in a class with the include keyword

require "support"

class Decade
  include Week
  no_of_yrs = 10
  def no_of_months
    puts Week::FIRST_DAY
    number = 10 * 12
    puts number
  end
end

d1 = Decade.new
puts Week::FIRST_DAY # -> Sunday
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months # -> Sunday; 120

# mixins in ruby
# ruby does not support multiple inheritance
# instead ruby allows mixins which remove the need for multiple inheritance
module A
  def a1
  end
  def a2
  end
end

module B
  def b1
  end
  def b2
  end
end

class Sample
  include A
  include B
  def s1
  end
end

samp = Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1

# samp can access all methods in A and B, and in Sample
