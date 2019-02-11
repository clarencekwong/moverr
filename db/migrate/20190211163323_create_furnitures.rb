class CreateFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :furnitures do |t|
      t.string :name
      t.string :category
      t.text :description
      t.integer :user_id
      t.integer :job_id

      t.timestamps
    end
  end
end
