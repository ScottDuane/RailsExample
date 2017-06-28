class CreateRegionsTable < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.integer :zip_code, null: false
      t.integer :region, null: false
    end
  end
end
