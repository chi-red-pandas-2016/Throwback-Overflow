class QuestionImage < ActiveRecord::Base
  belongs_to :question

  before_save :update_filename
  @image_links = ["https://i.ytimg.com/vi/-p3lKBJ-kA4/maxresdefault.jpg","http://del.h-cdn.co/assets/15/45/768x768/gallery-1446730608-delish-dunkaroos.jpg","http://vignette4.wikia.nocookie.net/official-furby/images/5/5d/Black_White_Furby_whit_brown_eyes.jpg/revision/latest?cb=20131110170718","http://img.timeinc.net/time/photoessays/2009/10_apple/apple_imac.jpg", "https://upload.wikimedia.org/wikipedia/commons/8/82/NES-Console-Set.jpg","https://lovelace-media.imgix.net/uploads/114/ae23fdc0-b6db-0132-4591-0ebc4eccb42f.jpg?","http://digitalspyuk.cdnds.net/16/05/768x576/gallery-1454676037-power-rangers.jpeg","http://recyclenation.com/resources/2015/1/iStock_000001154933Medium.jpg"]
  def update_filename
    if self.filepath == ""
      self.filepath = @image_links.sample
    end
  end

end
