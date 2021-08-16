class RenameCategoryNameColumnToCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :category_name, :name
    rename_column :categories, :detail_name, :ancestry
  end
end
