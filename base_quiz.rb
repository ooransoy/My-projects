bases = [2, 3, 4, 5, 6, 7, 8, 9, 16]
3.times do
  base = bases.sample
  convert = rand(1..100)
  while true
    puts "Convert #{convert} to base #{base}:"
    answer = gets.chomp
    puts answer == convert.to_s(base)
    if answer == convert.to_s(base)
      break
    end
  end
end
puts "Congratulations!"
