class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :descripcion
      t.references :carreras

      t.timestamps
    end
  end
end
