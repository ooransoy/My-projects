require 'prime'
10.times do
  x = rand(1..9999)
  while true
    puts "Is #{x} prime?(true or false)"
    a = gets.chomp
    b = true if a == "true"
    b = false if a == "false"
    break if Prime.prime?(x) == b
  end
end
