class User < ActiveRecord::Base

  has_many :questions
  has_many :votes
  has_many :answers
  has_many :comments

  validates :email, uniqueness: true, presence: true
  validates :hashed_password, presence: true
end
