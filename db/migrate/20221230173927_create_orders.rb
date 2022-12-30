class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :quantity
      t.integer :price
      t.integer :otype

      t.timestamps
    end
  end
end
