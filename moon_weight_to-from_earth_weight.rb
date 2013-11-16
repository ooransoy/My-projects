puts "Moon or Earth(m/e); Kilograms:"
c2 = gets.chomp
c = c2.split(" ")
puts c[1].to_f/6 if c[0] == "e"
puts c[1].to_f*6 if c[0] == "m"