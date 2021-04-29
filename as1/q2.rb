def search_students(students, rule)
	
	#Select all data which meet the rule
	res = students.select{ |hash|
			rule.all? {|key, value| 
					value == hash[key]
			}
	}
	
	if res.empty?
		puts "no match is found.\n"
	else
		puts "First Name\tLast Name\tPhone\n\n"
		res.each {|hash|
			puts "#{hash[:firstname]}\t\t"\
				 "#{hash[:lastname]}\t"\
				 "#{hash[:phonenumber]}"
		}
		puts "\n"
	end
end