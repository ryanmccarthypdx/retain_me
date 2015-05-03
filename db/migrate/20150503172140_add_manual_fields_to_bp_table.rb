class AddManualFieldsToBpTable < ActiveRecord::Migration
  def change
    change_table :basic_profiles do |t|
      t.string :professional_brand_statement
      t.string :passion
      t.string :want_to_try
      t.string :perfect_weekend
      t.string :strengths
      t.string :next_year_goals
    end
  end
end
