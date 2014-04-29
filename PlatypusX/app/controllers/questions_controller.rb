class QuestionsController < ApplicationController
  before_filter :authorize

  def index
  	@questions = Question.all
  end

  def new
  	@question = Question.new
  end

  def show
  	@question = Question.find(params[:id])
  @answer = Answer.new
  end

  def create
  	@question= Question.new params[:question]
  		if @question.save!
  			redirect_to questions_path
  		else
  			render :new
  		end
  end
end
