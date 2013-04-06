class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
<<<<<<< HEAD
  acts_as_commontable
=======
  acts_as_votable
>>>>>>> Polymorphic
end

@comment = comment.new(:name => 'my post!')
@comment.save

@comment.liked_by @user
@comment.votes.size # => 1
