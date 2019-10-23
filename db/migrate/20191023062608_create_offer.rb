class CreateOffer < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.float :price
      t.references :user
    end
  end
end
