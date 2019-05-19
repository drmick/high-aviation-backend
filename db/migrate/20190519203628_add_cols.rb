class AddCols < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :inn, :string
    add_column :orders, :kpp, :string
    add_column :orders, :bic, :string
    add_column :orders, :ur_name, :string
    add_column :orders, :account, :string
    add_column :orders, :corr_account, :string
  end
end
