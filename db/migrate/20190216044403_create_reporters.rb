class CreateReporters < ActiveRecord::Migration[5.2]
  def change
    create_table :reporters do |t|
      t.string :first_name
      t.string :last_name
      t.integer :a_number
      t.string :school_email

      t.timestamps
    end
  end
end
