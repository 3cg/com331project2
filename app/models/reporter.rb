class Reporter < ApplicationRecord
  has_many :complaints

  validates :uid, uniqueness: true

end
