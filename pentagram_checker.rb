puts "Sentence:"
s = gets.chomp.downcase
result = "Success!"
('a'..'z').to_a.each do |x|
	unless s.include?(x)
		result = "Sorry :("
		break
	end
end
puts result

