class Question < ActiveRecord::Base
  # Remember to create a migration!
  before_save :update_filepath

  belongs_to :user
  has_many :answers

  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :title, presence: true
  validates :body_text, presence: true

  IMAGE_LINKS = ["https://i.ytimg.com/vi/-p3lKBJ-kA4/maxresdefault.jpg","http://del.h-cdn.co/assets/15/45/768x768/gallery-1446730608-delish-dunkaroos.jpg","http://vignette4.wikia.nocookie.net/official-furby/images/5/5d/Black_White_Furby_whit_brown_eyes.jpg/revision/latest?cb=20131110170718","http://img.timeinc.net/time/photoessays/2009/10_apple/apple_imac.jpg", "https://upload.wikimedia.org/wikipedia/commons/8/82/NES-Console-Set.jpg","https://lovelace-media.imgix.net/uploads/114/ae23fdc0-b6db-0132-4591-0ebc4eccb42f.jpg?","http://digitalspyuk.cdnds.net/16/05/768x576/gallery-1454676037-power-rangers.jpeg","http://recyclenation.com/resources/2015/1/iStock_000001154933Medium.jpg"]

  def vote_total
    Vote.where(voteable_type: "Question", voteable_id: self.id).sum(:value)
  end

  def update_filepath
    if self.img_path == ""
      self.img_path = IMAGE_LINKS.sample
  end
end

end
