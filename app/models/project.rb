class Project < ActiveRecord::Base

  belongs_to :user

  attr_accessible :address, :idea, :problem, :solution, :zipcode
  
end