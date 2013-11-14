puts "Number:"
a = gets.chomp
puts "2nd number:"
b = gets.chomp
c = a.split("").last.to_i
d = b.split("").last.to_i
puts "#{a} - #{a.split("").last} = #{c}"
puts "#{b} - #{b.split("").last} = #{d}"
e = c+d
puts "#{c} - #{d} = #{e}"
puts "(#{e} + #{a.split("").last}) - #{a.split("").last} = #{a+b}"