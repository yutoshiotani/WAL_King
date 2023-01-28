class Post < ApplicationRecord
  belongs_to :user

  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_many :comments

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  enum status: { secret: 0, disclosure: 1 }
  #has_many :comments
  #has_many :favorites
  has_one_attached :image
end
