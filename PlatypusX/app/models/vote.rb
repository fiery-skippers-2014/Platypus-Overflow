class Vote < ActiveRecord::Base
  attr_accessible :count, :votable_id, :votable_type
  belongs_to :votable, :polymorphic => true

  def upvote
    self.count += 1
  end

  def downvote
    self.count -= 1
  end


end