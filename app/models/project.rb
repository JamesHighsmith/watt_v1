class Project < ActiveRecord::Base
  attr_accessible :address, :idea, :problem, :solution, :zipcode

  belongs_to :users

  has_many :comments, :as => :commentable
  has_many :events, :as => :eventable
  has_many :votes, :as => :voteable

#  project.comments.  
#  acts_as_commontable
#  acts_as_votable
end
