require 'json'
require 'main'
#require 'account_helper_module'

class Account
  attr_reader :name, :balance, :pin
  
  def initialize(name, pin, balance=100)
  	@name = name
  	@pin = pin
  	@balance = balance
  end

  @deposits_made = 0
  @deposited_money = 0
  @withdraws_made = 0
  @withdrawed_money = 0

  @withdraws_made_vs_deposits_made = 0

  if @deposits_made - @withdraws_made > 0
  	@withdraws_made_vs_deposits_made = "$+" + @deposits_made - @withdraws_made
  elsif @deposits_made - @withdraws_made < 0
  	@withdraws_made_vs_deposits_made = "$-" + @withdraws_made - @deposits_made
  end

  @widthdrawed_money_vs_deposited_money = 0

  if @deposited_money - @withdrawed_money > 0
  	@withdrawed_money_vs_deposited_money = "$+" + @deposited_money - @withdrawed_money
  elsif @@deposited_money - @withdrawed_money < 0
  	@withdrawed_money_vs_deposited_money = "$-" + @withdrawed_money - @deposited_money
  end	

  def withdraw(amount, pinnum)
    if pinnum = pin
      @balance -= amount
      puts "Withdrew $#{amount}, new balance: $#{@balance}"
      @withdraws_made += 1
      @withdrawed_money += amount
    else
      pinerror
    end
  end

  def deposit(amount, pinnum)
  	if pinnum == pin
  	  @balance += amount
  	  puts "Deposited $#{amount}, new balance: $#{@balance}"
  	  @deposits_made += 1
  	  @deposited_money += amount
  	else
  	  pinerror
  	end
  end

  def to_hash
    hash = {}
    instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
    hash
  end

  def save
  	system("touch " + self.name + ".json") unless File.exists?(self.name + ".json")
  	j = self.to_hash.to_json
    f = File.open(self.name + '.json', 'w')
    f.write(j)
    f.close
  end

  def load
  	# To do
  end

  private

  def pin
  	@pin
  end

  def pinerror
  	"Access denied: pin incorrect"
  end
end