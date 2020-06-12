class CommentsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @comment = Comment.new(comment_params)
    @comment.progress = Progress.where(["course_id = ? and user_id = ?", @course, current_user.id]).first
    authorize @comment
    @comment.save
    redirect_to video_course_path(params[:course_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :progress)
  end
end