class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  acts_as_votable
end

@comment = comment.new(:name => 'my post!')
@comment.save

@comment.liked_by @user
@comment.votes.size # => 1