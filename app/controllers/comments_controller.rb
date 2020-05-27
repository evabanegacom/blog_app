class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		@comment.article_id = params[:article_id]

		@comment.save

		redirect_to article_path(@comment.article)
	end

	def destroy
		@comment = Comment.find(params[:article_id])
		@comment.destroy
		redirect_to article_path(@comment.article)
	end

	private

	def comment_params
		params.require(:comment).permit(:author_name, :body, :image)
	end
end
