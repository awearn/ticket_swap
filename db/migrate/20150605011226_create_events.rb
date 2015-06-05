class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.string :date
      t.integer :tickets_for_sale
      t.float :average_price
      t.integer :tickets_wanted
      t.integer :type_id

      t.timestamps

    end
  end
end
