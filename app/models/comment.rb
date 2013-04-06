class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  acts_as_commontable
end
