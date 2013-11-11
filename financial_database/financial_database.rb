data = File.new("database.txt", "r+")
def sum(a)
  puts a.split(" ").map{|x| x.to_i}.inject{|x,y| x+y}
end
while true
  puts "Money to add:"
  m = gets.chomp
  data.syswrite(m + " ")
  puts sum(data.readlines.join)
end
