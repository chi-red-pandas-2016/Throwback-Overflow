class CreateUsersTable < ActiveRecord::Migration
  def change
    create table :users do |t|
      t.string :email, null: false
      t.string :hashed_password, null: false

      t.timestamps
    end
  end
end
