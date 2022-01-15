class User < ApplicationRecord

  has_many :user_patrimonies

  def total_patrimony
    self.user_patrimonies.includes(:stock).map(&:current_value).sum
  end

  def to_builder
    Jbuilder.new do |json|
      json.name name
    end
  end
end
