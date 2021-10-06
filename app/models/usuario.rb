class Usuario < ApplicationRecord
    belongs_to :reclamos
    belongs_to :registros
end
