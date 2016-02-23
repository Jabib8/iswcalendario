class CreateHasRecintoHorarios < ActiveRecord::Migration
  def change
    create_table :has_recinto_horarios do |t|
      t.references :horarios, index: true
      t.references :recintos, index: true

      t.timestamps
    end
  end
end
