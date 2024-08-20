class Sloop < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :rides
  has_many_attached :photos
  validates :capacity, presence: true, numericality: true
  validates :category, presence: true
  validates :description, presence: true
  validates :name, presence: true
end
