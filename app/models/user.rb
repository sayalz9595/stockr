class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def stock_update
    CustomerMailer.stock_update.deliver_now
  end
  has_many :customers, dependent: :destroy
end
