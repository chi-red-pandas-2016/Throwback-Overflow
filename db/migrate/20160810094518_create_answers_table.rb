class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text, null: false
      t.integer :user_id, null: false, index: true
      t.integer :question_id, null: false, index: true

      t.timestamps
    end
  end
end
