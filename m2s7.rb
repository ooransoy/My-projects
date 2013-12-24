r = 10
while true
  print "Quit(q) or press (enter) to continue:"
  a = gets.chomp
  break if a == "q"
  puts r
  r = r*2-7
end