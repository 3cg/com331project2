class RemoveschoolEmailFromReporter < ActiveRecord::Migration[5.2]
  def change
    remove_column :reporters, :school_email, :string
  end
end
