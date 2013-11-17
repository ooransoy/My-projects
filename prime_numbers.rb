require 'prime'
i = 2
while true
  puts i if Prime.prime?(i)
  break if i == 100
  i += 1
end

