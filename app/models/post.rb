class Post < ApplicationRecord
  validates :title, :date, presence: true
  belongs_to :user
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :genre

  def self.search(search)
    if search
      Post.where(['title LIKE ? OR place LIKE ? OR explanation LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Post.all
    end
  end
end
