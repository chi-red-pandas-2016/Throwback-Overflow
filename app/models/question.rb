class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :answers

  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :title, presence: true
  validates :body_text, presence: true

  def vote_total
    Vote.where(voteable_type: "Question", voteable_id: self.id).sum(:value)
  end

end
