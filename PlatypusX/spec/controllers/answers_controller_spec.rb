require 'spec_helper'

describe AnswersController do
  let(:question) {FactoryGirl.create :question}
  context "#new" do
    it "checks the assignment of a new Answer" do
      get :new, :question => question.id
      expect(assigns(:answer)).to be_a_new Answer
    end
  end
end


 # context "#create" do
 #   let(:user) {User.new(name: "marklar", email:"marklar", password:"marklar")}
 #   it "create is successful" do
 #    get :create
 #    expect(response).to be_success
 #  end

 #  it "creates a new user with valid attributes" do
 #   expect {
 #    post :create, :user => FactoryGirl.attributes_for(:user)
 #    }.to change { User.count }.by(1)
 #  end
 #  it "does not create a user with invalid attributes" do
 #    expect {
 #      post :create
 #      }.not_to change { User.count }
 #      expect(response).not_to be_redirect
 #    end

 #  end

