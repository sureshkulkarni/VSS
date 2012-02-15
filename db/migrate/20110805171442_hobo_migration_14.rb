class HoboMigration14 < ActiveRecord::Migration
  def self.up
    change_column :people, :gender, :string, :limit => 6, :default => :Male

    remove_index :donation_cards, :name => :index_donation_cards_on_donor_id rescue ActiveRecord::StatementInvalid
    add_index :donation_cards, [:donor_id], :unique => true
  end

  def self.down
    change_column :people, :gender, :string, :limit => 6, :default => "Male"

    remove_index :donation_cards, :name => :index_donation_cards_on_donor_id rescue ActiveRecord::StatementInvalid
    add_index :donation_cards, [:donor_id]
  end
end
