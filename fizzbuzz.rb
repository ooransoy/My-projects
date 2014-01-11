def db(x, y)
  return x % y == 0
end

puts "To number:"
n = gets.chomp.to_i

for i in 1..n
  if db(i, 3)
    puts "Fizz!"
    if db(i, 5)
      puts "FIZZBUZZ!"
    end
  elsif db(i, 5)
    puts "Buzz!"
  else
    puts i
  end
end