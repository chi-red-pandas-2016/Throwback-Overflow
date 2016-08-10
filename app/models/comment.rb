class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :answer, polymorphic: true
  belongs_to :question, polymorphic: true
  has_many :votes, as: :voteable

end
