class Product < ActiveRecord::Base
  belongs_to :user

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
