def bin(limit)
  x = 0
  while x <= limit
    print "#{x.to_s(2)} "
    x += 1
  end
end
puts "Limit:"
l = gets.chomp.to_i
bin(l)