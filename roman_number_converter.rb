require 'roman'
puts "Number(any type):"
r = gets.chomp.downcase
if RomanNumeral.is_roman_numeral?(r)
  puts RomanNumeral.to_integer(r)
end
unless RomanNumeral.is_roman_numeral?(r)
  puts RomanNumeral.from_integer(r.to_i)
end