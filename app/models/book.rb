class Book < ActiveRecord::Base
  acts_as_readable :on => :created_at
  has_attached_file :capa, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :capa, content_type: /\Aimage\/.*\z/

  validates :nome , presence: true, uniqueness: true
  validates :autor , presence: true
  validates :editora , presence: true
  validates :edicao , presence: true
  validates :estilo , presence: true
  validates :isbn , presence: true
  validates :data , presence: true

  
end
