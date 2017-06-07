class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :admission_period
      t.string :career
      t.string :fraternity
      t.string :current_rol

      t.timestamps
    end
  end
end
