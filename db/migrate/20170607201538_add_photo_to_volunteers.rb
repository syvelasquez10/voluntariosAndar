class AddPhotoToVolunteers < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteers, :photo, :string
  end
end
