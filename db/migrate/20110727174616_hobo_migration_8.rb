class HoboMigration8 < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string   :surname
      t.string   :first_name
      t.string   :middle_name
      t.string   :gender, :default => :Male
      t.string   :email
      t.date     :birth_date
      t.string   :phone
      t.string   :mobile
      t.float    :annual_income
      t.string   :address1_line1
      t.string   :address1_line2
      t.string   :address1_pin_code
      t.string   :pan_no
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :salutation_id
      t.integer  :country_id
      t.integer  :state_id
      t.integer  :district_id
      t.integer  :taluka_id
      t.integer  :atpost_id
    end
    add_index :people, [:salutation_id]
    add_index :people, [:country_id]
    add_index :people, [:state_id]
    add_index :people, [:district_id]
    add_index :people, [:taluka_id]
    add_index :people, [:atpost_id]
  end

  def self.down
    drop_table :people
  end
end
