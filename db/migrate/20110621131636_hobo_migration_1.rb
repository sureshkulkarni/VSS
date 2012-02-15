class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :talukas do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :districts do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :donationtypes do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :states do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :donationconditions do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :countries do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :paymentmodes do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :currencies do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :atposts do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :talukas
    drop_table :districts
    drop_table :donationtypes
    drop_table :states
    drop_table :donationconditions
    drop_table :countries
    drop_table :paymentmodes
    drop_table :currencies
    drop_table :atposts
  end
end
