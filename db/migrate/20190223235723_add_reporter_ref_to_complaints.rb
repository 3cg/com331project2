class AddReporterRefToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_reference :complaints, :reporter, foreign_key: true
  end
end
