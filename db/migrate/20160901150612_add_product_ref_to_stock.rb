class AddProductRefToStock < ActiveRecord::Migration
  def change
    add_reference :stocks, :product, index: true, foreign_key: true
  end
end
