class Question < ApplicationRecord
    belongs_to :user 
    has_many :question_situations, dependent: :destroy
    has_many :situations, through: :question_situations
    has_many :comment1s
    
    mount_uploader :image, ImageUploader 
    has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

end
