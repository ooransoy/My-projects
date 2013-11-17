dic = {}
while true
  puts dic
  puts "Add or delete:"
  an = gets.chomp
  if an == "add"
    puts "Key:"
    key = gets.chomp.to_sym
    puts "Value:"
    value = gets.chomp.to_sym
    dic[key] = value
  elsif an == "delete"
    puts "Key:"
    key = gets
    dic.delete(key)
  end
end
