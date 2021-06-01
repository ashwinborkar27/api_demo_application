class Patient < ApplicationRecord
  has_one :appointment
  has_many :docters, through: :appointments
end
