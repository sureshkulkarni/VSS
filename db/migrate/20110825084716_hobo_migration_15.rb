class HoboMigration15 < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.string   :othernames
      t.date     :donationdate
      t.float    :amountINR
      t.float    :amount
      t.string   :payment_details
      t.string   :receipt_no
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :collector_id
      t.integer  :donationtype_id
      t.integer  :currency_id
      t.integer  :donationcondition_id
      t.integer  :paymentmode_id
    end
    add_index :donations, [:collector_id]
    add_index :donations, [:donationtype_id]
    add_index :donations, [:currency_id]
    add_index :donations, [:donationcondition_id]
    add_index :donations, [:paymentmode_id]

    create_table :donationcardperiods do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :donation_id
      t.integer  :donation_card_id
      t.integer  :donationperiod_id
    end
    add_index :donationcardperiods, [:donation_id]
    add_index :donationcardperiods, [:donation_card_id]
    add_index :donationcardperiods, [:donationperiod_id]

    change_column :people, :gender, :string, :limit => 6, :default => :Male

    remove_column :donation_cards, :active
    remove_column :donation_cards, :period_start_month
    remove_column :donation_cards, :period_months

    remove_index :donation_cards, :name => :index_donation_cards_on_donor_id rescue ActiveRecord::StatementInvalid
    add_index :donation_cards, [:donor_id]
  end

  def self.down
    change_column :people, :gender, :string, :limit => 6, :default => "Male"

    add_column :donation_cards, :active, :boolean, :default => true
    add_column :donation_cards, :period_start_month, :string
    add_column :donation_cards, :period_months, :integer

    drop_table :donations
    drop_table :donationcardperiods

    remove_index :donation_cards, :name => :index_donation_cards_on_donor_id rescue ActiveRecord::StatementInvalid
    add_index :donation_cards, [:donor_id], :unique => true
  end
end
