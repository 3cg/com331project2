class RemoveLastnameFromReporter < ActiveRecord::Migration[5.2]
  def change
    remove_column :reporters, :last_name, :string
  end
end
