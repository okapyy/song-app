class Video < ApplicationRecord
  has_many :favorites , dependent: :destroy
  belongs_to :user

  mount_uploader :video, VideoUploader
  validates :video, presence: true

  def self.search(search)
    if search
      Video.where('artist LIKE ? OR song_title LIKE ?', "%#{search}%", "%#{search}%")
    else
      Video.all
    end
  end

  def favorite_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
