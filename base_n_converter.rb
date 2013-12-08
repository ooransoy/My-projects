def base_converter(x, xb, rb)
  return x.to_s.to_i(xb.to_i).to_s(rb.to_i)
end

while true
  puts "Number to convert: | Number to convert's base: | Return's base: || Q for quit"
  step = gets.chomp.split(" ")

  break if step[0].upcase == "Q"

  puts base_converter(step[0],step[1],step[2])
end