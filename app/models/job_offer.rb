class JobOffer < ActiveRecord::Base
  belongs_to :bid
  belongs_to :customer
  belongs_to :dealer
  belongs_to :payment
  belongs_to :booking_confirmation
end
