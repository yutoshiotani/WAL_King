class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :steps
  has_many :targets
  belongs_to :job, optional: true
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  has_many :comments, dependent: :destroy
  # フォローをした、されたの関係
  has_many :relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy

  # 一覧画面で使う
  has_many :followings, through: :relationships, source: :followed
  has_many :followers, through: :reverse_of_relationships, source: :follower

  enum gender: { ignore: 0, men: 1, women: 2 }
  enum status: { secret: 0, disclosure: 1 }
  #has_many :comments
  #has_many :favorites
  has_one_attached :profile_image
  def get_profile_image
    (profile_image.attached?) ? profile_image : 'no_image.jpg'
  end
  def fair_weight
  height * height * 22 / 10000
  end
  def bmi
    weight * 10000 / height / height 
  end
  def bmi25
    height * height * 25 / 10000
  end
  def bmi30
    height * height * 30 / 10000
  end
  def bmi35
    height * height * 35 / 10000
  end
  def bmi40
    height * height * 40 / 10000
  end
  def bmi18
    height * height * 37 / 20000
  end
  
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
  
  def self.guest
    find_or_create_by!(name: 'guestuser' ,email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guestuser"
    end
  end
  def follow(user)
    relationships.create(followed_id: user.id)
  end

  def unfollow(user)
    relationships.find_by(followed_id: user.id).destroy
  end

  def following?(user)
    followings.include?(user)
  end

end
