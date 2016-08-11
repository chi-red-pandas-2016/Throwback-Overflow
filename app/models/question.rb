class Question < ActiveRecord::Base
  # Remember to create a migration!
  before_save :update_filepath

  belongs_to :user
  has_many :answers

  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :title, presence: true
  validates :body_text, presence: true

  def vote_total
    Vote.where(voteable_type: "Question", voteable_id: self.id).sum(:value)
  end

  def update_filepath
    if self.img_path == ""
      self.img_path = "https://i.ytimg.com/vi/-p3lKBJ-kA4/maxresdefault.jpg"
    end
  end

end
