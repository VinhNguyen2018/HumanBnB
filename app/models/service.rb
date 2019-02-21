class Service < ApplicationRecord
  EVENT_TYPE = %w(Mariage Funerailles Anniversaires RemiseDiplomes EvenementsSportifs Concerts&sorties)
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :title, presence: true
  validates :price, presence: true
  validates :details, presence: true
  validates :city, presence: true
  validates :event_type, presence: true, inclusion: { in: EVENT_TYPE }
end
