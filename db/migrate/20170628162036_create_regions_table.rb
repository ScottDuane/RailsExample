class CreateRegionsTable < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.integer :zip_code
      t.integer :region
    end
  end
end
