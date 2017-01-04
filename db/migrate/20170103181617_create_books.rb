class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :nome
      t.string :autor
      t.string :editora
      t.integer :pages
      t.string :isbn
      t.integer :edicao
      t.datetime :data
      t.string :capa
      t.string :estilo
      t.string :tag

      t.timestamps null: false
    end
  end
end
