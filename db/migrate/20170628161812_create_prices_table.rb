class CreatePricesTable < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :plan_id, null: false, index: true
      t.integer :age, null: false
      t.integer :region, null: false
      t.integer :monthly_premium
    end
  end
end
