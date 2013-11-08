answer = rand(1..100)
i = 1
while true
	puts "Number?"
	num = gets.chomp.to_i
	break if num == answer
	puts "Up!" if num < answer
	puts "Down!" if num > answer
	i += 1
end
puts "Congratulations! You got it in #{i} moves!"

