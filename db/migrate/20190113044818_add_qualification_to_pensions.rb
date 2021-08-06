class AddQualificationToPensions < ActiveRecord::Migration[5.2]
  def change
    add_column :pensions, :qualification, :float
  end
end
