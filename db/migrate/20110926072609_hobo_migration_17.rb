class HoboMigration17 < ActiveRecord::Migration
  def self.up
    add_column :donation_cards, :tmpvar, :string

    change_column :people, :gender, :string, :limit => 6, :default => :Male
  end

  def self.down
    remove_column :donation_cards, :tmpvar

    change_column :people, :gender, :string, :limit => 6, :default => "Male"
  end
end
