class Webfilter

    def initialize(str)
        @template = str
    end
    
    def filter
        #Remove all pattern from <% to %>
        filteredtemp = @template.gsub(/<%.+?%>/m, '')
		#Remove all pattern from /%
		filteredtemp = filteredtemp.gsub(/%.+\n/, '')
        
        return filteredtemp
    end
end