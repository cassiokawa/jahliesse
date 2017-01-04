class CreateEstilos < ActiveRecord::Migration
  def change
    create_table :estilos do |t|
      t.string :estilo

      t.timestamps null: false
    end
  end
end
