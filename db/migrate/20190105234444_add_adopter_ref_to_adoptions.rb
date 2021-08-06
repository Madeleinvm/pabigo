class AddAdopterRefToAdoptions < ActiveRecord::Migration[5.2]
  def change
    add_reference :adoptions, :adopter, index: true
  end
end
