class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.boolean :estado
      t.string :celular
      t.string :correo
      t.string :contrasena
      t.references :carreras
      t.references :cursos
      t.string :perfil
      t.string :tipo_usuario

      t.timestamps
    end
  end
end
