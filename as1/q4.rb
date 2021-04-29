class Hash
	def merge(hash2)
		# copy hash1, we cannot change it
		tmp = self.clone   

        hash2.each {|key, value|
			# check block
            if block_given?                             
                if tmp[key]
					# yield block
                    tmp[key] = yield(key, self[key], value) 
                else
                    tmp[key]= value
                end                    
            else
                tmp[key] = value
            end
        }
        return tmp
	
	end
	
	# Dangerous version
	def merge!(hash2)
		self.merge(hash2).each{|key, val| self[key] = val}
	end
	
end