class CachedResult < ApplicationRecord
  validates :name, presence: true
  validates :profession, presence: true
  validates :day, presence: true
  validates :time, presence: true
  validates :cabinet, presence: true
end
