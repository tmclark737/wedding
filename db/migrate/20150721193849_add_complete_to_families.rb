class AddCompleteToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :complete, :boolean
  end
end
