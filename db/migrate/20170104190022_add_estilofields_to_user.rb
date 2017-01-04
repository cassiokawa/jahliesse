class AddEstilofieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :estilo_um, :integer ,  default: 0,  null: false
    add_column :users, :estilo_dois, :integer,  default: 0,  null: false
    add_column :users, :estilo_tres, :integer,  default: 0,  null: false
    add_column :users, :estilo_quatro, :integer,  default: 0,  null: false
    add_column :users, :estilo_cinco, :integer,  default: 0,  null: false
  end
end
