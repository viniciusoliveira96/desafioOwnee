class Filme < ApplicationRecord

  def self.search(query)
      where(["nome LIKE ?", "%#{query}%"])
  end
end
