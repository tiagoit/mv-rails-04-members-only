class Post < ApplicationRecord
  # validations
  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true
  validates :user_id, presence: true
  
  # relations
  belongs_to :user
end
