class Place < ActiveRecord::Base
	validates_presence_of :nazwa, :wojewodztwo, :miasto, :autor
	has_attached_file :photo, :styles => { :medium => "600x600>", :small => "300x300>", :thumb => "150x150>" }
	has_many :comments
end
