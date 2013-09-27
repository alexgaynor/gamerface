class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :username, :location, :prof_pic
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :location, presence: true
  validates :prof_pic, presence: true

  has_and_belongs_to_many :usergames
  has_many :games, :through => :usergames
end
