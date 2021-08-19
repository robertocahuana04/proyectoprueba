class Registro < ApplicationRecord
  belongs_to :rol
  has_many :usuarios
end
