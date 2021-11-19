class Producto < ApplicationRecord
  mount_uploader :foto, FotoUploader
  belongs_to :tipo 
end
