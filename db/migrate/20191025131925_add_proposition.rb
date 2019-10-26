class AddProposition < ActiveRecord::Migration[6.0]
  def change
    create_table :propositions do |t|
      t.references :user
      t.references :offer
      t.boolean :user_validation
      t.boolean :owner_validation
    end
  end
end
