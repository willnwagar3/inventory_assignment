library_inventory = [:sciFi => 15, :philosophy => 7, :nonFiction => 22, :classics => 12]
puts "This is the current inventory of genres and quantity of each in this library."
library_inventory.each do |key, value|
	puts "You have #{value} #{key}"
end
puts "Would you like to edit the quantity of any genres?"
	response = gets.chomp.downcase

	if response == "yes"
		puts "Which genre would you like to edit? SciFi, philosophy, NonFiction, or Classics?"
		genre = gets.chomp.downcase
			if genre == "scifi"
				puts "Please enter new quantity."
				quantity = gets.chomp.to_i
				library_inventory.push ["sciFi"] => quantity
			elsif genre == "philosophy"
				puts "Please enter new quantity"
				quantity = gets.chomp.to_i
				library_inventory.push ["philosophy"] => quantity
			elsif genre == "nonfiction"
				puts "Please enter new quantity."
				quantity = gets.chomp.to_i
				library_inventory.push ["nonFiction"] => quantity
			elsif genre == "classics"
				puts "Please enter new quantity"
				quantity = gets.chomp.to_i
				library_inventory.push ["classics"] => quantity
			end
	elsif response == "no"
		puts "Please return when you are ready to edit inventory."
	else
		"Please select 'yes' or no'"
		response = gets.chomp.downcase
	end
		
				
				
				