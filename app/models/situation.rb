class Situation < ApplicationRecord
    has_many :question_situations, dependent: :destroy
    has_many :questions, through: :question_situations
end
