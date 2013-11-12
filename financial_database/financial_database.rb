def sum(a)
  puts a.map{|x| x.to_i}.inject{|x,y| x+y}
end
while true
  puts "Money to add:"
  m = gets.chomp
  data = File.new("database.txt", "r+")
  data.write(m + " ")
  puts sum(data.readlines)
  data.close
end
