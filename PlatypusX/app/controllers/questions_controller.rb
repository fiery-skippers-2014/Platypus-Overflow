class QuestionsController < ActionController::Base
 def index
 	@questions = Question.all
 end 

 def new
 	@question = Question.new
 	@question.save
 end

 def create
 	@question= Question.new params[:question]
 		if @question.save
 			redirect_to question_post_path(@question)
 		else
 			render :new
 		end
 end
end
