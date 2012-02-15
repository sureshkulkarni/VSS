class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :states, :country_id, :integer

    add_index :states, [:country_id]
  end

  def self.down
    remove_column :states, :country_id

    remove_index :states, :name => :index_states_on_country_id rescue ActiveRecord::StatementInvalid
  end
end
