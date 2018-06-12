class Page < ActiveRecord::Base
	validates :name, presence: true
    before_save :check_length

    private
    def check_length
    	name.length < 25
    end

end
