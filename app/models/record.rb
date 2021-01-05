class Record < ApplicationRecord
  validates :name, presence: true
  validates :unique, presence: true
end
