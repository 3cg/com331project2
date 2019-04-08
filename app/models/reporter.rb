class Reporter < ApplicationRecord
  has_many :complaints

  validates :first_name, :last_name, :a_number, :school_email, presence: true

  validates :a_number, uniqueness: true

  validates :school_email, uniqueness: true

  validates :school_email,
  format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: 'must be in the email format.'
  }

end
