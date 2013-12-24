def bin(limit, base)
  x = 0
  while x <= limit
    print "#{x.to_s(base)} "
    x += 1
  end
end
puts "Limit:"
l = gets.chomp.to_i
puts "Base:"
b = gets.chomp.to_i
bin(l, b)