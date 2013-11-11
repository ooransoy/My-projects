i = 99
while true
  if i == 1
    puts "1 bottle of beer on the wall, 1 bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
    break
  end
  puts "#{i} bottles of beer on the wall, #{i} bottles of beer."
  i -= 1
  puts "Take one down and pass it around, #{i} bottles of beer on the wall."
end
