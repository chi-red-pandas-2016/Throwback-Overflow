class Vote < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user

  belongs_to :question, polymorphic: true
  belongs_to :answer, polymorphic: true
  belongs_to :comment, polymorphic: true
end
