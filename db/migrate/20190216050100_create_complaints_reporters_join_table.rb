class CreateComplaintsReportersJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :complaints, :reporters do |t|
      t.index :complaint_id
      t.index :reporter_id
    end
  end
end
