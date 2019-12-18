class Post < ApplicationRecord
  validates :title, :date, presence: true
  belongs_to :user
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :genre

  def self.search(search)
    if search
      Post.where(['title LIKE ? OR place LIKE ? OR explanation LIKE ? OR prefecture_id LIKE ? OR genre_id LIKE ? OR genre_id LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Post.all
    end
  end
end
