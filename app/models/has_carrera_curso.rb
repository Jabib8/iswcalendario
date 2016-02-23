class HasCarreraCurso < ActiveRecord::Base
  belongs_to :carreras
  belongs_to :cursos
end
