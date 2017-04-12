class ChangeTimeDatatypeInRestaurants < ActiveRecord::Migration[5.0]
  def up
    change_table :restaurants do |t|
      t.change :open_time, :float
      t.change :close_time, :float
    end
  end

  def down
    change_table :restaurants do |t|
      t.change :open_time, :string
      t.change :close_time, :string
    end
  end
end
