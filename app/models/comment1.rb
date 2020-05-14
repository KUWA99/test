class Comment1 < ApplicationRecord
  belongs_to :user
  belongs_to :question
end
