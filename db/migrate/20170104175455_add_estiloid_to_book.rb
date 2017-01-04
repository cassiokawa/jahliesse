class AddEstiloidToBook < ActiveRecord::Migration
  def change
    add_column :books, :estilo_id, :integer
  end
end
