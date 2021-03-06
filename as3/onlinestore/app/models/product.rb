class Product < ApplicationRecord
	# fields required
    validates :name, :description, :image, presence: true
    # numericality
    validates :price, 
        numericality: {greater_than_or_equal_to: 0.01}
    # uniqueness
    validates :name, uniqueness: true
    # RegEx 
	#i:case-insensitive
    validates :image, 
        allow_blank: true, 
        format: {
            with: %r{\.(gif|jpg|png)\Z}i, 
            message: 'must be GIF, JPG, PNG images'
        }
		
	
	# one to many relationship
    has_many :lineitems

    # callback function, called before 'destroy' method
    before_destroy :make_sure_no_line_items

    def make_sure_no_line_items
        if self.lineitems.empty?    # lineitems belong to product, and self will be implied if not explicitly written
            return true
        else
            return false
        end
    end


end
