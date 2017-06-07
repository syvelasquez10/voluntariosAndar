class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :volunteer_id
      t.integer :role_id
      t.date :initial_date
      t.date :final_date

      t.timestamps
    end
  end
end
