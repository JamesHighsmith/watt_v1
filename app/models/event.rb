class Event < ActiveRecord::Base
  has_many :comments, :as => :commentable
  acts_as_commontable
end
