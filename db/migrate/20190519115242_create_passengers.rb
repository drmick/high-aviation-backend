class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.integer :order_id
      t.boolean :age1
      t.boolean :age2
      t.timestamps
    end
  end
end
