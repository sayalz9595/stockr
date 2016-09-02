class AddStockRefToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :stock, index: true, foreign_key: true
  end
end
