class CreateFurnitureJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :furniture_jobs do |t|
      t.integer :furniture_id
      t.integer :job_id

      t.timestamps
    end
  end
end
