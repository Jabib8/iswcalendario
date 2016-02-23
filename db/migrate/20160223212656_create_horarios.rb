class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.string :nombre
      t.date :horario_inicio
      t.date :horario_fin

      t.timestamps
    end
  end
end
