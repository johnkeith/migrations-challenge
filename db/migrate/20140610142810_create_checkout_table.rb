class CreateCheckoutTable < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.timestamps
    end
  end
end
