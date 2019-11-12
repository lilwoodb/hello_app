class Stim < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: true }
  validates :description, presence: true, length: { maximum: 255 }
  validates :source, presence: true, length: { maximum: 255 }
end
