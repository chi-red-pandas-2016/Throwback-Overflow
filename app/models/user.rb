require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :questions
  has_many :votes
  has_many :answers
  has_many :comments

  validates :email, uniqueness: true, presence: true
  validates_format_of :email, :with => /@/
  validates :hashed_password, presence: true

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user
      return user if user.password == password
    else
      nil
    end
  end
end
