require 'rails_helper'

RSpec.describe Genero, type: :model do
  context "Validade de um genero" do
    it "Genero valido?" do
      genero = Genero.new
      genero.genero = "Romance"

      expect(genero.valid?).to be_truthy
    end

    it "Genero invalido?" do
      genero = Genero.new
      genero.genero = nil

      expect(genero.valid?).to be_falsey
    end
  end
end
