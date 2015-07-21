class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.references :family, index: true
      t.boolean :complete
      t.boolean :response

      t.timestamps null: false
    end
    add_foreign_key :guests, :families
  end
end
