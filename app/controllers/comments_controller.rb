class CommentsController < ApplicationController
	def create
		@place = Place.find(params[:place_id])
		@comment = @place.comments.create!(params[:comment])
		respond_with(@place)
	end
end
