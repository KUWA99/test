class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
has_many :questions
has_many :comment1s
has_many :likes, dependent: :destroy
has_many :liked_questions, through: :likes, source: :question

def already_liked?(question)
  self.likes.exists?(question_id: question.id)
end


end
