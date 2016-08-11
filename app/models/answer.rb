class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :question

  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :text, presence: true

  def vote_total
    Vote.where(voteable_type: "Answer", voteable_id: self.id).sum(:value)
  end

end
