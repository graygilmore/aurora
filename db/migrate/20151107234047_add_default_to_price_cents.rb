class AddDefaultToPriceCents < ActiveRecord::Migration
  def change
    change_column :products, :price_cents, :integer, default: 0, null: false
  end
end
