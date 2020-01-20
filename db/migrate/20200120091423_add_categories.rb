class AddCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
    end
    add_column :offers, :category_id, :integer
    add_foreign_key :offers, :categories, column: :category_id
  end
end
