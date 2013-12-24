puts "A wild Combubble appeared! What do you do? (Self-shock, Crash, Terminal Destroy) [Case sensitive]"
react = gets.chomp

chance = rand(0.0..1.0).round(2)

if chance >= 0.50
  chance = 1
else
  chance = 0
end

puts "You got killed!" if chance == 0 && react != "Self-shock"

puts "You killed Combubble!" if chance == 1 && react != "Self-shock"

puts "Combubble ran away!" if react == "Self-shock"