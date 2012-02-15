class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :currencies, :currencycode, :string
  end

  def self.down
    remove_column :currencies, :currencycode
  end
end
