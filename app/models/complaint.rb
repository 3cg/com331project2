class Complaint < ApplicationRecord
  belongs_to :reporter

  validates :date, :location, :department, :description, :reporter_id, presence: true

  validates :department, inclusion: { in: %w(Maintenance Technology),
    message: "- you did not enter a valid department" }

  validates :location, inclusion: {
    in: %w(Stuart Keating Kaplan Pritzker Engineering Alumni  Hermann MSV SSV MTCC
      Perlstein Wishnick Siegel Galvin Crown IIT-Tower),
      message: "- you did not enter a valid location"  }

  def person_number=(a_number)
    self.reporter = Reporter.find_by(a_number: a_number)
  end

  def person_number
    self.reporter ? self.reporter.a_number : nil
  end

  #def validate(record)
  #unless Reporter.find_by_a_number(record.a_number)
    #record.errors[:a_number] << 'Student ID is missing from database'
    #end
  #end

end
