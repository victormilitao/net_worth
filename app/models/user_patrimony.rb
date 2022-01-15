class UserPatrimony < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  def current_value
    self.quantity * self.stock.price
  end

  def to_builder
    Jbuilder.new do |json|
      json.current_value current_value
    end
  end
end
