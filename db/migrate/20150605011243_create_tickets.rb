class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :notes
      t.float :price
      t.boolean :for_sale_wanted
      t.integer :event_id

      t.timestamps

    end
  end
end
