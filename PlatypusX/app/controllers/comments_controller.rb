class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
  @comment = Comment.new(body: params[:body], answer_id: params[:answer_id])
    if @comment.save
      @answer = @comment.answer
      render partial: 'answers/answers', locals: {answer: @answer,comment: @comment}
    else
      render json: @user.error.full_messages, status: :unprocessable_entity
  end
end

  def show
    @answer= Answer.find(params[:id])
    @comment = Comment.find(params[:id])
 end
end