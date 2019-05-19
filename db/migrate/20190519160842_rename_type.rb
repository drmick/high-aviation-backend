class RenameType < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :type, :payer_type
  end
end
