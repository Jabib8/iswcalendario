class CreateHasPersonaCursos < ActiveRecord::Migration
  def change
    create_table :has_persona_cursos do |t|
      t.references :personas, index: true
      t.references :cursos, index: true

      t.timestamps
    end
  end
end
