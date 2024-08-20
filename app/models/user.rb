class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :traveller_rides
  has_many :ride_requests
  has_many :bookmarks
  has_many :sloops
  has_many :reviews
  has_one_attached :photo

  validates :first_name, :last_name, presence: true
  validates :phone_number, presence: true, length: { minimum: 10 }, format: { with: /\A(\+33|0)[1-9]\d{8}\z/, message: "Doit être un numéro de téléphone français valide" }
  validates :age, numericality: true, exclusion: { in: 0...18, message: "Vous devez avoir au moins 18 ans pour vous inscrire" }

end

