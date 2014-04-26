class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    p response = params[:answer][:response]
    p question_id = params[:question_id]
    p user_id = session[:user_id]

    @answer = Answer.new(response: response, question_id: question_id)
    if @answer.save
      render :partial => 'answers/answers', :locals => {:answer => @answer}
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end


  end

  def show
    @question= Question.find(params[:id])
    @answer = Answer.find(params[:id])
 end
end


