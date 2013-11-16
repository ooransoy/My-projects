require 'net/http'
def up?(site)
  Net::HTTP.new(site).head('/').kind_of? Net::HTTPOK
end
puts "Site:"
s = gets.chomp
puts "Site is up!" if up?(s)
puts "Site is not up." unless up?(s)