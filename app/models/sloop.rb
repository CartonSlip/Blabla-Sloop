class Sloop < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :rides
end
