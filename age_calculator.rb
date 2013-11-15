puts "Year you were born in(integer please):"
y = gets.chomp.to_i
puts "Has your birthday passed but you are still in this year?(y/n)"
a = gets.chomp
puts "You are #{(Time.now.year - y) + 1} years old." if a == "y"
puts "You are #{Time.now.year - y} years old." if a == "n"