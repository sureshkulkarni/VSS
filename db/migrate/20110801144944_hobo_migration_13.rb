class HoboMigration13 < ActiveRecord::Migration
  def self.up
    create_table :donation_cards do |t|
      t.boolean  :active, :default => true
      t.string   :period_start_month
      t.integer  :period_months, :limit => 12
      t.date     :first_donation_date
      t.date     :reminder_on
      t.text     :remarks
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :donor_id
      t.integer  :thru_id
    end
    add_index :donation_cards, [:donor_id]
    add_index :donation_cards, [:thru_id]

    change_column :people, :gender, :string, :limit => 6, :default => :Male
  end

  def self.down
    change_column :people, :gender, :string, :limit => 6, :default => "Male"

    drop_table :donation_cards
  end
end
