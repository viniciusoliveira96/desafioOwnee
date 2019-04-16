class Filme < ApplicationRecord
  validates :nome, presence: true
  validates :genero, presence: true
  validates :preco, presence: true

  def self.search(query)
      where(["nome LIKE ?", "%#{query}%"])
  end
end
