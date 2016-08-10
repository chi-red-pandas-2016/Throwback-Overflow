class CreateVotesTable < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id, null: false, index: true
      t.references :voteable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
