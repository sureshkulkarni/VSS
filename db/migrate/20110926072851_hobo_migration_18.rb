class HoboMigration18 < ActiveRecord::Migration
  def self.up
    remove_column :donation_cards, :tmpvar

    change_column :people, :gender, :string, :limit => 6, :default => :Male
  end

  def self.down
    add_column :donation_cards, :tmpvar, :string

    change_column :people, :gender, :string, :limit => 6, :default => "Male"
  end
end
