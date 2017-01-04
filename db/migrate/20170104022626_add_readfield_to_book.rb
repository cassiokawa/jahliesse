class AddReadfieldToBook < ActiveRecord::Migration
  def change
    add_column :books, :has_read, :boolean
  end
end
