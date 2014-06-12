class AddReaderTable < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :full_name, null: false
      t.string :phone_number, null: false
      t.string :email
    end
  end
end
