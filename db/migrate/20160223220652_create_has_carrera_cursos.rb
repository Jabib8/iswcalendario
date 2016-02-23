class CreateHasCarreraCursos < ActiveRecord::Migration
  def change
    create_table :has_carrera_cursos do |t|
      t.references :carreras, index: true
      t.references :cursos, index: true

      t.timestamps
    end
  end
end
