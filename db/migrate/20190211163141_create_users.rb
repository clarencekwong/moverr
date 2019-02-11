class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :gender
      t.string :address
      t.text :bio
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
