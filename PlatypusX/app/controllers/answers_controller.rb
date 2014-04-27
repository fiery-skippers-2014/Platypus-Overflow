class AnswersController < ApplicationController

  def index
  end
  def new
    @answer = Answer.new
  end

  def create
    @comment = Comment.new
    response = params[:answer][:response]
    question_id = params[:question_id]
    user_id = session[:user_id]

    @answer = Answer.new(response: response, question_id: question_id)
    if @answer.save
      render :partial => 'answers/answers', :locals => {:answer => @answer, :comment => @comment}
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end

  end

  def show
    @question= Question.find(params[:id])
    @answer = Answer.find(params[:answer_id])
 end
end


