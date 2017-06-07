class AddCvToVolunteers < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteers, :cv, :text
  end
end
