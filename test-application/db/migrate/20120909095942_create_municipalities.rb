class CreateMunicipalities < ActiveRecord::Migration
  def change
    create_table :municipalities do |t|
      t.string :name
      t.string :prefix
      t.string :fiscal_code
      t.string :cap
      t.string :istat_code
      t.integer :district_id

      t.timestamps
    end
  end
end
