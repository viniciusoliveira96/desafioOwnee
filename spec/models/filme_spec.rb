require 'rails_helper'

RSpec.describe Filme, type: :model do
  context "Validade de um filme" do
    it "Filme valido?" do
      filme = Filme.new
      filme.nome = "A era do Gelo"
      filme.genero = "Infantil"
      filme.preco = "10.0"

      expect(filme.valid?).to be_truthy
    end

    it "Filme invalido?" do
      filme = Filme.new
      filme.nome = nil
      filme.genero = "Infantil"
      filme.preco = "10.0"

      expect(filme.valid?).to be_falsey
    end
  end
end
