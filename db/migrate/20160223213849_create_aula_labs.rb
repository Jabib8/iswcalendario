class CreateAulaLabs < ActiveRecord::Migration
  def change
    create_table :aula_labs do |t|
      t.references :recintos
      t.string :descripcion
      t.string :observacion
      t.references :personas

      t.timestamps
    end
  end
end
