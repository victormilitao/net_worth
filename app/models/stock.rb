class Stock < ApplicationRecord
  def to_builder
    Jbuilder.new do |json|
      json.initials initials
    end
  end
end
