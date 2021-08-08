class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 4..100 }
  validates :body, presence: true
  validates :published, inclusion: { in: [true, false] }

  validates_associated :user
  belongs_to :user
  has_many :comments
end
