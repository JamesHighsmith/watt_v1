class Event < ActiveRecord::Base
  attr_accessible 

  belongs_to :projects

  has_many :comments, as: :commentable
end
