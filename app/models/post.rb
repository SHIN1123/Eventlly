class Post < ApplicationRecord
  validates :title, :genre, :date, :area, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search
      Post.where(['title LIKE ? OR area LIKE ? OR place LIKE ? OR genre LIKE ? OR explanation LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Post.all
    end
  end
end
