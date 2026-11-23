# while loop example
$i = 0
$num = 5

while $i < $num do
  puts "Inside the loop i = #$i"
  $i += 1
end

puts ""

# while modifier
$i = 0
$num = 5
begin
  puts "Inside the loop i = #$i"
  $i += 1
end while $i < $num

puts ""

# until statement
$i = 0
$num = 5
until $i > $num do
  puts "Inside the loop i = #$i"
  $i += 1
end

puts ""

# until modifier
$i = 0
$num = 5
begin
  puts "Inside the loop i = #$i"
  $i += 1
end until $i > $num

puts ""

# for statement
for i in 0..5
  puts "Value of local i is #{i}"
end

puts ""

# for each loop
(0..5).each do |i|
  puts "value of local variable is #{i}"
end

puts ""

# break statement
for i in 0..5
  if i > 2 then
    break
  end
  puts "Value of local i is #{i}"
end

puts ""

# next statement
for i in 0..5
  if i < 2 then
    next
  end
  puts "value of local i is #{i}"
end

puts ""

# redo statement
for i in 0..5
  if i < 2 then
    puts "Value of local i is #{i}"
    # redo -> will continue in an infinity loop
  end
end


# retry statement
for i in 0..5
  # retry if i > 2 -> infinite 1-2 print loop
  puts "Value of local i is #{i}"
end
