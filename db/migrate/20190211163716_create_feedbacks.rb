class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :review_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
