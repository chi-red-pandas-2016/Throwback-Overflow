class ChangeImgDefault < ActiveRecord::Migration
  def change
    change_column_default :question_images, :filepath, 'https://i.ytimg.com/vi/-p3lKBJ-kA4/maxresdefault.jpg'
  end
end
