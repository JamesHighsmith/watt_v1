class Project < ActiveRecord::Base
  attr_accessible :address, :idea, :problem, :solution, :zipcode
  acts_as_votable
end

@project = project.new(:name => 'my post!')
@project.save

@project.liked_by @user
@project.votes.size # => 1