puts "Number(base 10):"
num = gets
num = num.to_i
puts "Convert to base:"
base = gets
base = base.to_i
puts "#{num.to_s(base)}"


