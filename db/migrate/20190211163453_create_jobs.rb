class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :poster_id
      t.integer :mover_id
      t.datetime :date
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
