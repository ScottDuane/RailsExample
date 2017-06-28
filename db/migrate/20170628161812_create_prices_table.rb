class CreatePricesTable < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :plan_id, null: false, index: true
      t.integer :age, null: false
      t.integer :region, null: false
      t.float :monthly_premium, null: false
    end
  end
end
