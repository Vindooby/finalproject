class Champ < ApplicationRecord
  def self.search(search)
  where("name ILIKE ", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
end
end
