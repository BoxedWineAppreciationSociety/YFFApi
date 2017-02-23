class Performance < ApplicationRecord
  validates :stage, presence: true
  validates :time, presence: true
  validates :artist, presence: true

  belongs_to :artist
end
