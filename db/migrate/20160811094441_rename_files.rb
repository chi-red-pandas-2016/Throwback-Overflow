class RenameFiles < ActiveRecord::Migration
  def change
    rename_table :files, :question_images
  end
end
