class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end
