class Longlink < ApplicationRecord
  validates :url, presence: true, uniqueness: true
end
