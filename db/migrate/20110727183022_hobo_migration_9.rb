class HoboMigration9 < ActiveRecord::Migration
  def self.up
    change_column :people, :gender, :string, :limit => 6, :default => :Male
  end

  def self.down
    change_column :people, :gender, :string, :default => "Male"
  end
end
