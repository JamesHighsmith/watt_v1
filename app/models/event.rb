class Event < ActiveRecord::Base
  # attr_accessible :title, :body
acts_as_votable
end

@event = event.new(:name => 'my post!')
@event.save

@event.liked_by @user
@event.votes.size # => 1