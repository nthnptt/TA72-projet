class AddProfileForUser < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :city,
      t.string :address,
      t.numeric :city_code,
      t.string :username,
    end
  end
end