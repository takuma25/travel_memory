class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :name_kana
      t.string :email
      t.string :password
      t.text :self_introduction
      t.text :image

      t.timestamps
    end
  end
end
