class QuestionsController < ActionController::Base
 def index
 	@questions = Question.all
 end 

 def new
 	@question = Question.new
 end

 def show
 	@question = Question.find(params[:id])
 end

 def create
 	@question= Question.new params[:question]
 		if @question.save
 			redirect_to root_url
 		else
 			render :new
 		end
 end
end