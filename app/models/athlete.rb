class Athlete < ApplicationRecord
  has_one :like, dependent: :destroy
end
