class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :doc_id
      t.integer :guest_id
      t.string :checkin
      t.string :checkout

      t.timestamps
    end
  end
end
