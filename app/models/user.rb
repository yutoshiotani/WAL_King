class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :steps
  has_many :targets
  belongs_to :job, optional: true
  #has_many :comments
  #has_many :favorites
  has_one_attached :profile_image
end
