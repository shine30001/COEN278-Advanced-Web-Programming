class Compress
	attr_accessor :words, :seq
	
	def initialize(str)
		@hash = {}
		@seq = []
		@words = []
		
		#Split string by not w
		str.split(/\W/).each{|w|
		
			#Append words into array and add the number into hashtable
			if not @hash[w]
				@hash[w] = @hash.size
				@words << w
			end
			
			@seq << @hash[w]
		}
	
	end
	
	
end