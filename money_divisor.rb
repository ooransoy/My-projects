puts "Money amount to divide: (in Turkish liras)"
money = gets.chomp.to_f

notes = [200,100,50,20,10,5,1,0.5,0.25,0.1,0.05,0.01]

notes.each do |i|
  numofnotes = money / i
  money = money % i
  puts "#{numofnotes.to_i}x #{i}" if numofnotes.to_i != 0
end