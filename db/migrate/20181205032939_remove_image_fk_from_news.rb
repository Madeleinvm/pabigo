class RemoveImageFkFromNews < ActiveRecord::Migration[5.2]
  def change
    remove_reference :news, :image, foreign_key: true
  end
end
