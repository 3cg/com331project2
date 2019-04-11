class AddNameToReporter < ActiveRecord::Migration[5.2]
  def change
    add_column :reporters, :name, :string, default: ''
  end
end
