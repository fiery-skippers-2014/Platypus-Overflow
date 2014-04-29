class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
  p params
  @comment = Comment.new(body: params[:comment][:body], answer_id: params[:answer_id])
    if @comment.save
      @answer = @comment.answer
      render json: @comment.to_json
      # render partial: 'answers/answers', locals: {answer: @answer,comment: @comment}
    else
      render partial: 'answers/answers', locals: {answer: @answer,comment: @comment}
    end

  end

  # I'm confused by this.
  def show
    @answer= Answer.find(params[:id])
    @comment = Comment.find(params[:id])
    @comments= @answer.comments
    p "$$$$$"
    p @comments
    p "$$$$$"
    render json: @comment.to_json
 end
end
