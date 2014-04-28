class VotesController < ApplicationController

  def new
    @vote = Vote.new
    # render partial: 'shared/_vote', locals: {vote: @vote}
  end

  def create

  end

  def show

  end

end