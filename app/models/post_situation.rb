class PostSituation < ApplicationRecord
  belongs_to :question
  belongs_to :situation
end
