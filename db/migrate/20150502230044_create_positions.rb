class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.string :summary
      t.date :start_date
      t.date :end_date
      t.boolean :is_current
      t.string :company
      t.integer :full_profile_id

      t.timestamps null: false
    end
  end
end
