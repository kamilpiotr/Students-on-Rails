class Comment < ActiveRecord::Base
	include Gravtastic
	gravtastic :email
	belongs_to :place
	
end
