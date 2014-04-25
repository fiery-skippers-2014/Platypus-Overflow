require 'spec_helper'

describe UsersController do
  context "#index" do
    it "index is successful" do
      get :index
      expect(response).to be_success
    end
  end

  context "#new" do
    it "new is successful" do
      get :new
      expect(response).to be_success
    end
    it "assigns a new user" do
      get :new
      expect(assigns(:user)).to be_a_new User
    end
  end

  context "#create" do
   let(:user) {User.new(name: "marklar", email:"marklar", password:"marklar")}
   it "create is successful" do
    get :create
    expect(response).to be_success
  end

  it "creates a new user with valid attributes" do
   expect {
    post :create, :user => FactoryGirl.attributes_for(:user)
    }.to change { User.count }.by(1)
  end
  it "does not create a user with invalid attributes" do
    expect {
      post :create
      }.not_to change { User.count }
      expect(response).not_to be_redirect
    end

  end

end