class CreatePlansTable < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :carrier, null: false
      t.string :name, null: false
      t.string :deductible, null: false
      t.string :out_of_pocket_max, null: false
    end
  end
end
