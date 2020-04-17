class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :videos, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorites_videos, through: :favorites, source: :video

  validates :name, presence: true, uniqueness: true
end
