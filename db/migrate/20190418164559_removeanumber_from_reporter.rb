class RemoveanumberFromReporter < ActiveRecord::Migration[5.2]
  def change
    remove_column :reporters, :a_number, :integer
  end
end
