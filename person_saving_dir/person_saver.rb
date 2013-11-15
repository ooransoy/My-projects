require 'rubygems'
require 'json'
require 'pp'

class Person
  attr_accessor :fname, :mname, :lname, :age
  def to_hash
    hash = {}
    instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
    hash
  end
  def save
    j = self.to_hash.to_json
    f = File.open('savefile.json', 'w')
    f.write(j)
    f.close
  end
end

p = Person.new
puts "First name:"
p.fname = gets.chomp.capitalize
puts "Middle name:"
p.mname = gets.chomp.capitalize
puts "Last name:"
p.lname = gets.chomp.capitalize
puts "Age:"
p.age = gets.chomp.to_i

p.save