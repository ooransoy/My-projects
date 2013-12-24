def trinum(num)
  a = 0
  b = 0
  while a < num
    a += 1
    b+=a
    return b if a == num
  end
  return 0 if num == 0
end
puts "Number to find:"
puts trinum(gets.chomp.to_i)