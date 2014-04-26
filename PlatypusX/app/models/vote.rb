class Vote < ActiveRecord::Base
  attr_accessible :count, :votable_id, :votable_type
  belongs_to :votable, :polymorphic => true
end