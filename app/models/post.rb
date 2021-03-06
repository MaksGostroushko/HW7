class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :author, optional: true
  validates :title, presence: true, length: {maximum: 40}
  validates :content, presence: true, length: {maximum: 240}
  validates :name, presence: true
  validates :image, presence: true
end
