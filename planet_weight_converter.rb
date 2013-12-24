puts "Moon(m), Mars(ma) or Earth(e) |to| Moon(m), Mars(ma) or Earth(e) | Kilograms:"
c = gets.chomp.split(' ')
s = c[2].to_i.to_f
puts s * 6 * 0.4 if c[0] == "m" && c[1] == "ma"
puts s * 6 if c[0] == "m" && c[1] == "e"
puts s / 0.4 / 6 if c[0] == "ma" && c[1] == "m"
puts s / 0.4 if c[0] == "ma" && c[1] == "e"
puts s / 6 if c[0] == "e" && c[1] == "m"
puts s * 0.4 if c[0] == "e" && c[1] == "ma"
puts "Note: Calculations aren't fully accurate."