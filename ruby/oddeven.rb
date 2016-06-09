a = [1,2,3,4,5]


	result = {}
	a.each do |val|

	if (val % 2) == 0
		result[:even] ||= []
		result[:even] << val
	else
		result[:odd] ||= []
		result[:odd] << val
	end
		
	end	

	puts "result =  #{result[:even]}"
	puts "result =  #{result[:odd]}"