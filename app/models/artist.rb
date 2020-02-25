class Artist < ApplicationRecord
  validates :name, presence: true

  has_many :performances

  before_save :generate_sort_name, :generate_image_name

  private

  def generate_sort_name
    self.sort_name = name if sort_name.blank?
  end

  def generate_image_name
    self.image_name = name.gsub(' ', '') if image_name.blank?
  end
end
