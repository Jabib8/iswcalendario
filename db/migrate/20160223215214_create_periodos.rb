class CreatePeriodos < ActiveRecord::Migration
  def change
    create_table :periodos do |t|
      t.string :nombre
      t.boolean :estado
      t.date :fecha_inicio
      t.date :fecha_final
      t.references :aula_labs

      t.timestamps
    end
  end
end
