class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.datetime :date
      t.string :location
      t.string :type
      t.text :description
      #t.index ["reporter_id"]

      t.timestamps
    end
  end
end
