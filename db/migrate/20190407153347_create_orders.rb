class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :phone
      t.string :email
      t.string :status
      t.string :flight_number
      t.string :flight_date
      t.string :flight_from
      t.string :flight_to
      t.string :external_key
      t.string :guid
      t.integer :user_id
      t.timestamps
    end
  end
end
