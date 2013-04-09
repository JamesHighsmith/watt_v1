class Project < ActiveRecord::Base
  
  has_many :comments, as: :commentable

  attr_accessible :address, :idea, :problem, :solution, :zipcode
  
end
