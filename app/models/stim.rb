class Stim < ApplicationRecord
  before_save { self.name = name.downcase }
  validates :name,  presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :description, presence: true, length: { maximum: 255 }
  validates :source, presence: true, length: { maximum: 255 }
end
