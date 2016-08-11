class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :answer, polymorphic: true
  belongs_to :question, polymorphic: true
  has_many :votes, as: :voteable
  validates :text, presence: true

  def parent_question
    if self.commentable_type = "Answer"
      Answer.find(commentable_id).question
    end
  end

  def vote_total
    Vote.where(voteable_type: "Comment", voteable_id: self.id).sum(:value)
  end


end
