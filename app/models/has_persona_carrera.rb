class HasPersonaCarrera < ActiveRecord::Base
  belongs_to :personas
  belongs_to :cursos
end
