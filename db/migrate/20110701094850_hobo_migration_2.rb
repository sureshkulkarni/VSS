class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :districts, :state_id, :integer

    add_index :districts, [:state_id]
  end

  def self.down
    remove_column :districts, :state_id

    remove_index :districts, :name => :index_districts_on_state_id rescue ActiveRecord::StatementInvalid
  end
end
