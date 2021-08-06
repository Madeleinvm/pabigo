class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :tipo
      t.text :descripcion
      t.text :direccion
      t.integer :cuenta

      t.timestamps
    end
  end
end
