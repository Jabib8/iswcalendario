class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
