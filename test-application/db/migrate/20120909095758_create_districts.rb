class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :short_name
      t.string :full_name
      t.integer :region_id

      t.timestamps
    end
  end
end
