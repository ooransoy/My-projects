answer = rand(1.00..100.00)
answer
i = 1
while true
  puts "Decimal number?"
  num = gets.chomp.to_f
  break if num == answer
  puts "Up!" if num.to_i < answer.to_i
  puts "Down!" if num.to_i > answer.to_i
  puts "Left!" if num.to_f > answer.to_f
  puts "Right!" if num.to_f < answer.to_f
  i += 1
end
puts "Congratulations! You got it in #{i} moves!"
