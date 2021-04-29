#!/usr/bin/ruby

def count_word(str="", word="")
	if str == "" 
		return "no match is found"
	end
	
	pool = {}
	
	#Split array by not w
	arr = str.split(/\W+/)
	
	#Add to hashtable
	arr.each do |x|
		if pool[x]
			pool[x]+=1
		else
			pool[x]=1
		end
	end
	
	#Return the count
	if word == ""
		return pool
	else
		if pool[word]
			return pool[word]
		else
			return 0
		end
	
	end
	
end
