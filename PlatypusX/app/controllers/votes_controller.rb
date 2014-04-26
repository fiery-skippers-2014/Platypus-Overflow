class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def show
     p params
    @vote.create(params[:vote_data])
  end

end