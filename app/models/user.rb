class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sloops
  has_many :rides, through: :sloops

  has_many :traveller_rides # en tant que voyageur
  has_many :skipper_traveller_rides, through: :rides, source: :traveller_rides # en tant que skipper

  has_many :ride_requests
  has_many :bookmarks
  has_many :received_reviews, foreign_key: :receiver_id, class_name: "Review"
  has_many :posted_reviews, foreign_key: :poster_id, class_name: "Review"
  has_one_attached :photo
  acts_as_favoritor

  validates :first_name, :last_name, presence: true
  validates :phone_number, presence: true, length: { minimum: 10 }
  validates :age, numericality: {only_integer: true}, exclusion: { in: 0...18, message: "Vous devez avoir au moins 18 ans pour vous inscrire" }

end
