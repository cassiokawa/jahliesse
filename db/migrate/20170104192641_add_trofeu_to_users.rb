class AddTrofeuToUsers < ActiveRecord::Migration
  def change
    add_column :users, :trofeu_um, :integer,  default: 0,  null: false
    add_column :users, :trofeu_dois, :integer,  default: 0,  null: false
    add_column :users, :trofeu_tres, :integer,  default: 0,  null: false
    add_column :users, :trofeu_quatro, :integer,  default: 0,  null: false
    add_column :users, :trofeu_cinco, :integer,  default: 0,  null: false
  end
end
