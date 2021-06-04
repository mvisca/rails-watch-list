class List < ApplicationRecord
  include CloudinaryHelper
  validates :name, presence: true, uniqueness: true

  has_one_attached :photo

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  def photo_path
    url_photo = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.EK7upmf5Nv9BHhPR92_OqQHaEJ%26pid%3DApi&f=1'
    if photo.attached?
      return cl_image_path photo.key
    else
      return url_photo
    end
  end
end
