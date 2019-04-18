class RemoveFirstnameFromReporter < ActiveRecord::Migration[5.2]
  def change
    remove_column :reporters, :first_name, :string
  end
end
