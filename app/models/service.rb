class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :title, presence: true
  validates :price, presence: true
  validates :details, presence: true
  validates :city, presence: true
  validates :event_type, presence: true
end
