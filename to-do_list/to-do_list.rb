require 'json'
class ToDo
  def initialize(owner, item, id)
    @owner = owner
    @item = item
    @id = id
  end
  def to_hash
    hash = {}
    instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
    hash
  end
  def save
    j = self.to_hash.to_json
    f = File.open('list.json', 'w')
    f.write(j)
    f.close
  end
end

td = ToDo.new
puts "Owner:"
td.owner = gets.chomp
puts "Item:"
td.item = gets.chomp
puts "Id"
td.id = gets.chomp

td.save