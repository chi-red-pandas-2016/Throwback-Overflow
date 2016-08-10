class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false, index: true
      t.references :commentable, polymorphic: true, index: true
      t.string :text, null: false

      t.timestamps
    end
  end
end
