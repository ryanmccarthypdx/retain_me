class CreateFullProfiles < ActiveRecord::Migration
  def change
    create_table :full_profiles do |t|
      t.string :associations
      t.string :honors
      t.string :interests
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
