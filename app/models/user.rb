class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_many :services
  has_many :bookings
  validates :gender, presence: true
  validates :age, presence: true
  validates :skills, presence: true
  validates :bio, presence: true
  validates_length_of :bio, minimum: 5, allow_blank: true
  validates :image_url, presence: true
end
