class AddtemporalhometoFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_reference:feedbacks, :temporal_homes, foreign_key: true
  end
end
