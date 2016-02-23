class CreateHasPersonaCarreras < ActiveRecord::Migration
  def change
    create_table :has_persona_carreras do |t|
      t.references :personas, index: true
      t.references :cursos, index: true

      t.timestamps
    end
  end
end
