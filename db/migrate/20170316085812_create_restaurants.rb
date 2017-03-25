class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :code
      t.string :address
      t.string :phone
      t.string :price_zone
      t.integer :manager_id
      t.integer :status
      t.string :open_time
      t.string :close_time
      t.integer :order_count
      t.integer :free_delivery
      t.integer :delivery_fee
      t.string :website
      t.string :email
      t.string :url_avatar

      t.timestamps
    end
  end
end
