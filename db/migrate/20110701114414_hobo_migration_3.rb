class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :talukas, :district_id, :integer

    add_index :talukas, [:district_id]
  end

  def self.down
    remove_column :talukas, :district_id

    remove_index :talukas, :name => :index_talukas_on_district_id rescue ActiveRecord::StatementInvalid
  end
end
