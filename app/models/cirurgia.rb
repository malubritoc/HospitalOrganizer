class Cirurgia < ApplicationRecord
  belongs_to :sala_cirurgia
  belongs_to :medico
  belongs_to :paciente
end
