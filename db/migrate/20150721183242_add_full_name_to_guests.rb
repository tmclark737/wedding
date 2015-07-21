class AddFullNameToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :full_name, :string
  end
end
