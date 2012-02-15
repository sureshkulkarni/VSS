class HoboMigration11 < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :string

    change_column :people, :gender, :string, :limit => 6, :default => :Male
  end

  def self.down
    remove_column :users, :role

    change_column :people, :gender, :string, :limit => 6, :default => "Male"
  end
end
