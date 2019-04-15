class CreateFilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :filmes do |t|
      t.string :nome
      t.string :genero
      t.float :preco

      t.timestamps
    end
  end
end
