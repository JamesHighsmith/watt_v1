class Project < ActiveRecord::Base
  attr_accessible :address, :idea, :problem, :solution, :zipcode
<<<<<<< HEAD
  has_many :comments, :as => :commentable
  acts_as_commontable
=======
  acts_as_votable
>>>>>>> Polymorphic
end

@project = project.new(:name => 'my post!')
@project.save

@project.liked_by @user
@project.votes.size # => 1
