class AddUserRefToStock < ActiveRecord::Migration
  def change
    add_reference :stocks, :user, index: true, foreign_key: true
  end
end
