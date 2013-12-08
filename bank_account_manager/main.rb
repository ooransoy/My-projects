require 'account_class.rb'
require 'json'
#require 'account_helper_module'

puts "Account name:"
acname = gets.chomp

puts "Account pin:"
acpin = gets.chomp

puts "Account balance:"
actotal = gets.chomp

p = Account.new(acname, actotal, acpin)

while true
  "Quit(q), Deposit(d), Widthdraw(w) or show items(s)?"
  a = gets.chomp
  case a
  when "d"
  	puts "Money to deposit:"
  	dadd = gets.chomp
  	puts "Pin:"
  	pinn = gets.chomp
  	Account.deposit(dadd, pinn)
  when "w"
  	puts "Money to widthdraw:"
  	dadd = gets.chomp
  	puts "Pin:"
  	pinn = gets.chomp
  	Account.withdraw(dadd, pinn)
  when "s"
  	puts "Deposits made(dm), deposited money(dpdm), withdraws made(wm), withdrawed money(wdm), deposits made to withdraws made ratio(dmtwm) or deposited money to withdrawed money ratio(dpdmtwdm)?"
  	sa = gets.chomp
  	case sa
  	when "dm"
  		puts p.deposits_made
  	when "dpdm"
			puts p.deposited_money
		when "wm"
			puts p.withdraws_made
		when "wdm"
			puts p.withdrawed_money
		when "dmtwm"
			puts p.withdraws_made_vs_deposits_made
		when "dpdmtwdm"
			puts p.withdrawed_money_vs_deposited_money
		end
	end
	if a == "q"
		break
	end
end