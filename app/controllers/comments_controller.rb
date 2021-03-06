class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@place = Place.find(params[:place_id])
		@place.comments.create(comment_params.merge(:user_id => current_user.id))
		redirect_to place_path(@place)
	end

	def destroy
		@user = current_user
		@comment = Comment.find(params[:id])
		if @comment.user != current_user
			return render :text => "Not Allowed", :status => :forbidden
		end

		@comment.destroy
		redirect_to user_path(@user)
	end


	private

	def comment_params
		params.require(:comment).permit(:message, :rating)
	end
end
