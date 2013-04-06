class Event < ActiveRecord::Base
<<<<<<< HEAD
  has_many :comments, :as => :commentable
  acts_as_commontable
=======
  # attr_accessible :title, :body
acts_as_votable
>>>>>>> Polymorphic
end

@event = event.new(:name => 'my post!')
@event.save

@event.liked_by @user
@event.votes.size # => 1
