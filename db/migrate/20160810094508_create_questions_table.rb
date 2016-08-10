class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :body_text, null: false
      t.integer :user_id, null: false, index: true

      t.timestamps
    end
  end
end
