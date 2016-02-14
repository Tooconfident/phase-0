# Leap Years

# I worked on this challenge by myself.


# Your Solution Below

def leap_year?(year)
	
	if year%4 == 0 && year%100 != 0
		
		p true
	
	elsif year%400 == 0

		p true

	elsif year%4 == 0 && year%100 == 0 && year%400 != 0

		p false

	else

		p false
			
	end

end

leap_year?(100)
leap_year?(400)
leap_year?(2000)
leap_year?(2400)
