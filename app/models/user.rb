class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable, :recoverable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :lastname, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body


  has_many :projects
  has_many :votes, :as => :votable 
  has_many :comments, :as => :commentable
  has_many :subcomments, :as => :subcommentable

end
