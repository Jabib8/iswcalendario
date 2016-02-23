class CreateRecintos < ActiveRecord::Migration
  def change
    create_table :recintos do |t|
      t.string :nombre
      t.string :direccion
      t.references :horarios, index: true

      t.timestamps
    end
  end
end
