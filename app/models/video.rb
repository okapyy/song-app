class Video < ApplicationRecord
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

end
