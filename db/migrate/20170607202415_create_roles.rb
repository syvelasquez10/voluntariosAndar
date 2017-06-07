class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :title
      t.string :description
      t.float :maximum_work_hours
      t.float :minimum_work_hours

      t.timestamps
    end
  end
end
