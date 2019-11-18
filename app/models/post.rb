class Post < ApplicationRecord
  validates :title, :genre, :date, :area, presence: true
  belongs_to :user
  has_many :comments
end
