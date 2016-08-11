class QuestionImage < ActiveRecord::Base
  belongs_to :question

  before_save :update_filename

  def update_filename
    if self.filepath == ""
      self.filepath = "https://i.ytimg.com/vi/-p3lKBJ-kA4/maxresdefault.jpg"
    end
  end

end
