class CambiarTipoFechaAdopcion < ActiveRecord::Migration[5.2]
  def change
  	change_column :adoptions, :adoption_date, :date 
  end
end
