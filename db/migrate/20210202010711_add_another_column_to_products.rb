class AddAnotherColumnToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :cart_id, :integer
  end
end
