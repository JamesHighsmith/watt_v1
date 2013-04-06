class Project < ActiveRecord::Base
  attr_accessible :address, :idea, :problem, :solution, :zipcode
end
