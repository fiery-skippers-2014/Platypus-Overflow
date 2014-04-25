require 'spec_helper'

describe QuestionsController do 
	context "#index" do
		it "checks if the root page loads successfully" do
      get :index
      expect(response).to be_success
		end

		it "knows about all the todos in the view" do
			get :index
			expect(assigns(:questions)).to eq Question.all
		end
	end

	context "#show" do
		let(:question) {FactoryGirl.create :question}
		it "should know about a certain question" do
			get :show, :id => question.id 
			expect(assigns(:question)).to eq question 
		end
	end

	context "#new" do
		it "checks the assignment of a new Question" do
			get :new
			expect(assigns(:question)).to be_a_new Question
		end
	end
end