class HoboMigration7 < ActiveRecord::Migration
  def self.up
    create_table :donationperiods do |t|
      t.string   :name
      t.date     :startdate
      t.date     :enddate
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :donationperiods
  end
end
