class Wines < ApplicationRecord
validates :make, :name, :presence => true
validates :year, :price, numericality: { only_integer: true}
end
