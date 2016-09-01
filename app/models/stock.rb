class Stock < ActiveRecord::Base
  belongs_to :user
  has_many :products
end
