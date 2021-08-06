class AddQualificationToTrainerDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :trainer_details, :qualification, :float
  end
end
