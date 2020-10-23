class UserSong < ApplicationRecord
  validates :audio_file, presence: true
  validates :title, presence: true

  has_many :suggestions
  belongs_to :user

end
