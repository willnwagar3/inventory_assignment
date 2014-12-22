library_inventory = {"sciFi" => 15, "philosophy" => 7, "nonFiction" => 22, "classics" => 12}

	puts "This is the current inventory of genres and quantity of each in this library."

library_inventory.each do |key, value|
	puts "You have #{value} #{key} books."
end

	puts "Would you like to edit the quantity of any genres?"
	
		response = gets.chomp.downcase

	until response == "yes" || response == "no"
		puts "Please enter \"yes\" or \"no\"."
		response = gets.chomp.downcase
	end

		if response == "no"
			puts "Please return when you are ready to edit the inventory."
		end
		
		while response == "yes"
			puts "Which genre would you like to edit? SciFi, philosophy, NonFiction, or Classics?"
			genre = gets.chomp.downcase
				
				until genre == "scifi" || genre == "philosophy" || genre == "nonfiction" || genre == "classics"
					puts "Please check your spelling and enter a valid genre."
					genre = gets.chomp.downcase
				end
					
				if genre == "scifi"
					puts "Please enter new quantity."
					quantity = gets.chomp.to_i
						until quantity >= 0 
							puts "Please enter a valid quantity."
							quantity = gets.chomp.to_i
						end
					library_inventory["sciFi"] = quantity
						puts "The updated inventory is as follows:"
							library_inventory.each do |key, value|
								puts "#{key}: #{value}"
							end

				elsif genre == "philosophy"
					puts "Please enter new quantity"
					quantity = gets.chomp.to_i
						until quantity >= 0 
							puts "Please enter a valid quantity."
							quantity = gets.chomp.to_i
						end
					library_inventory ["philosophy"] = quantity
						puts "The updated inventory is as follows:"
							library_inventory.each do |key, value|
								puts "#{key}: #{value}"
							end

				elsif genre == "nonfiction"
					puts "Please enter new quantity."
					quantity = gets.chomp.to_i
						until quantity >= 0
							puts "Please enter a valid quantity."
							quantity = gets.chomp.to_i
						end
					library_inventory["nonFiction"] = quantity
						puts "The updated inventory is as follows:"
							library_inventory.each do |key, value|
								puts "#{key}: #{value}"
							end

				elsif genre == "classics"
					puts "Please enter new quantity"
					quantity = gets.chomp.to_i
						until quantity >= 0 
							puts "Please enter a valid quantity."
							quantity = gets.chomp.to_i
						end
					library_inventory["classics"] = quantity
						puts "The updated inventory is as follows:"
							library_inventory.each do |key, value|
								puts "#{key}: #{value}"
							end
				end
				
				puts "Would you like to edit an additional genre?"
				response = gets.chomp.downcase
			
				until response == "yes" || response == "no"
					puts "Please choose \"yes\" or \"no\"."
					response = gets.chomp.downcase
				end

				if response == "no"
					puts "Please return when you are ready to edit additional inventory."
				end
					
		end

	
	

		
				
				
				