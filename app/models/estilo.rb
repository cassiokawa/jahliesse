class Estilo < ActiveRecord::Base
	belongs_to :book
	acts_as_readable :on => :created_at
 
end
