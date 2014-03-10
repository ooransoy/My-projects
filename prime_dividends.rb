n = 45
d = []
r = 0
require 'prime'

1.upto(n) do |x|
if Prime.prime?(x)
    while n % x == 0 do
      d.push(x)
      n = n/x
    end
  end
  if n == 1
    break
  end
end

print 