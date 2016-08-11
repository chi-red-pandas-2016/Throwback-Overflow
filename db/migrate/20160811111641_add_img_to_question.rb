class AddImgToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :img_path, :string
  end
end
