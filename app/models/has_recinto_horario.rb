class HasRecintoHorario < ActiveRecord::Base
  belongs_to :horarios
  belongs_to :recintos
end
