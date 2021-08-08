class Comment < ApplicationRecord
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :comment, presence: true, length: {maximum: 500}  
  

  validates_associated :user
  validates_associated :post
  belongs_to :user
  belongs_to :post
end
